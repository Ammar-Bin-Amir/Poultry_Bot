#include <Arduino.h>
#include "DHT.h"
#include "EasyNextionLibrary.h"
#include "WiFi.h"
#include "ThingSpeak.h" 
#include <HTTPClient.h>
#include <FlowSensor.h>
#include <NewPing.h>

// put pin definitions here
const int dhtPin = 22;
const int mqPin = 36; //vp
const int pumpPin = 19;
const int pumpInput = 18;
const int flowSensorPin = 33;
const int trigger = 12;
const int echo = 13;
int pumpStatus = 1;

// Constants
#define WIFI_TIMEOUT_MS 2000
#define WIFI_NETWORK "EVO-Charji-7404"
#define WIFI_PASSWORD "BSJ5vr5M"
// #define WIFI_NETWORK "B-94"
// #define WIFI_PASSWORD "d24b687c"
#define CHANNELID 2047728 //2184577
#define APIKEY "PKNGA4A9TABT1FN2" //"33WFVMB4KNV4QM8Z"
#define MAX_DISTANCE 60 //cm

// Struct declarations
DHT dht(dhtPin, DHT22);
EasyNex myDisplay(Serial2); 
WiFiClient client;
FlowSensor Sensor(YFS201, flowSensorPin);
NewPing sonar(trigger, echo, MAX_DISTANCE); // NewPing setup of pins and maximum distance.

//variables under monitoring
float humidity, temperature, flowRate, distance;
int intTemp;
int mqVoltage, ammoniaPPB, ammoniaPPM;
unsigned long lastPrintTime = 1000;
unsigned long lastDisplayUpdate = 1000;
unsigned long lastUpdateTemp = 1000;
unsigned long lastUpdateHumidity = 2000;
unsigned long lastUpdateAmmonia= 3000;
unsigned long lastUpdateLiquid= 4000;
unsigned long lastUpdateFlow= 5000;
unsigned long lastUpdateBattery =6000;
unsigned long lastUpdateWifi =60000;
unsigned long timebefore = 0; // Same type as millis() for pump reading
String stringFromNextion;

// put function declarations here:
void count()
{
	Sensor.count();
}

// void pumpOn(){
//   digitalWrite(pumpPin, !pumpStatus);
//   pumpStatus = !pumpStatus;
// }

void connectWifi(){
  Serial.println("Connecting to Wifi");
  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_NETWORK, WIFI_PASSWORD);
  unsigned long startAttemptTime = millis();
  
  while(WiFi.status()!= WL_CONNECTED && (millis()-startAttemptTime) <= WIFI_TIMEOUT_MS){
    Serial.print(".");
    delay(200);
  }

  if(WiFi.status() != WL_CONNECTED){
    Serial.println("Failed to connect wifi");
  }
  else{
    Serial.println("Connection Successfull");
    Serial.println(WiFi.localIP());
  }
}

//Main Functions

void setup() {
  delay(1000);
  Serial.begin(115200);
  Serial2.begin(9600);
  pinMode(pumpPin, OUTPUT);
  connectWifi();
  Sensor.begin(count);
  lastPrintTime = millis();
  ThingSpeak.begin(client);
  myDisplay.writeNum("n0.val", 0);
  delay(3000);
}

void loop() {
  //pump
  int num = myDisplay.readNumber("n0.val");
      if (num == 1) {
      Serial.println("Turn PUMP ON");
      digitalWrite(pumpPin, LOW);
      myDisplay.writeNum("n0.val", 1);
    }
    else if (num == 0) {
      Serial.println("Turn PUMP OFF");
      myDisplay.writeNum("n0.val", 0);
      digitalWrite(pumpPin, HIGH);
    }
  

  if (millis() - timebefore >= 1000)
	{
		Sensor.read();
		Serial.print("Flow rate (L/minute) : ");
    flowRate = Sensor.getFlowRate_m();
		Serial.println(flowRate);
		timebefore = millis();
    delay(50);                     // Wait 50ms between pings (about 20 pings/sec). 29ms should be the shortest delay between pings.
    Serial.print("Ping: ");
    distance = sonar.ping_cm();
    Serial.print(distance); // Send ping, get distance in cm and print result (0 = outside set distance range)
    Serial.println("cm");
	}

  if(millis()-lastDisplayUpdate >= 2000){
    humidity = dht.readHumidity();
    temperature = dht.readTemperature();

    mqVoltage = analogRead(mqPin);
    ammoniaPPB = map(mqVoltage,0, 4095, 0, 500);
    ammoniaPPM = ammoniaPPB/10;

    Serial.println("===========================");
    Serial.print("Humidity = ");
    Serial.println(humidity);
    Serial.print("temp = ");
    Serial.println(temperature);
    Serial.print("MQ Voltage = ");
    Serial.println(mqVoltage);
    Serial.println("===========================");

    //writing on display
    Serial.println("Updating Display");
    myDisplay.writeNum("n1.val", temperature);
    myDisplay.writeNum("n2.val", humidity);
    myDisplay.writeNum("n3.val", ammoniaPPM);
    //distance query here
    myDisplay.writeStr("t4.txt", "HIGH");

    myDisplay.writeNum("x5.val", flowRate);
    myDisplay.writeNum("n6.val", 34);
    lastDisplayUpdate = millis();
  }
  //dashboard update
  if(millis()-lastUpdateAmmonia >= 20000){
    Serial.println("Updating Dashboard");
    ThingSpeak.setField(1, temperature);
    ThingSpeak.setField(2, humidity);
    ThingSpeak.setField(3, ammoniaPPM);
    if(distance >= 40)
    ThingSpeak.setField(4, distance);
    ThingSpeak.setField(5, flowRate);
    ThingSpeak.setField(6, ammoniaPPM);
    ThingSpeak.writeFields(CHANNELID, APIKEY);
    lastUpdateAmmonia = millis();
  }
}

