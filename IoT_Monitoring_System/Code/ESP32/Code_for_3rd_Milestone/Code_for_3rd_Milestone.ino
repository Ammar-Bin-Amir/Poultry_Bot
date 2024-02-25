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
// const int arduinoSend = 1;
const int litter = 26;

// Constants
#define WIFI_TIMEOUT_MS 2000
// #define WIFI_NETWORK "EVO-Charji-7404"
// #define WIFI_PASSWORD "BSJ5vr5M"
#define WIFI_NETWORK "B-94"
#define WIFI_PASSWORD "d24b687c"
#define CHANNELID 2047728 //2184577
#define APIKEY "PKNGA4A9TABT1FN2" //"33WFVMB4KNV4QM8Z"
#define MAX_DISTANCE 60 //cm

// Struct declarations
DHT dht(dhtPin, DHT22);
EasyNex myDisplay(Serial2); 
WiFiClient client;
FlowSensor Sensor(YFS201, flowSensorPin);
NewPing sonar(trigger, echo, MAX_DISTANCE); // NewPing setup of pins and maximum distance.
HardwareSerial SerialPort(1);


//variables under monitoring
float humidity, temperature, flowRate, distance;
int intTemp;
int pumpStatus = 1;
int angle;
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
  SerialPort.begin (115200, SERIAL_8N1, 4, 2);
  Serial.begin(115200);
  Serial2.begin(9600);
  Serial1.begin(115200);
  pinMode(pumpPin, OUTPUT);
  pinMode(litter, OUTPUT);
  connectWifi();
  Sensor.begin(count);
  lastPrintTime = millis();
  ThingSpeak.begin(client);
  myDisplay.writeNum("n0.val", 0);
  delay(3000);
}

void loop() {
  
  //pump using display
  String num = myDisplay.readStr("t6.txt");
      if (num == "Pump is ON") {
      Serial.println("Turn PUMP ON");
      digitalWrite(pumpPin, LOW);
    }
    else if (num == "Pump is OFF"){
      Serial.println("Turn PUMP OFF");
      digitalWrite(pumpPin, HIGH);
    }
  
  //Liquid Flow rate sensing
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

  //updating display after reading latest sensor values
  if(millis()-lastDisplayUpdate >= 2500){
    humidity = dht.readHumidity();
    temperature = dht.readTemperature();

    //temperature to angle conversrion
    angle = ((temperature - (-40)) * (180 - 0) / (80 - (-40))) + 0; 
    mqVoltage = analogRead(mqPin);
    ammoniaPPB = map(mqVoltage,0, 4095, 0, 500);
    ammoniaPPM = ammoniaPPB/10;
    Serial1.write(ammoniaPPM);

    Serial.println("===========================");
    Serial.print("Humidity = ");
    Serial.println(humidity);
    Serial.print("temp = ");
    Serial.println(temperature);
    Serial.print("MQ Voltage = ");
    Serial.println(mqVoltage);
    Serial.println("===========================");

    //Display values update
    Serial.println("Updating Display");
    myDisplay.writeNum("n1.val", temperature);
    myDisplay.writeNum("z1.val", angle);    //temperature guage angle
    myDisplay.writeNum("n2.val", humidity);
    myDisplay.writeNum("j2.val", humidity); //progress bar
    myDisplay.writeNum("n3.val", ammoniaPPM);

    //distance query here
    if(distance >= 33){
      myDisplay.writeStr("t4.txt", "EMPTY");
    }
    if(distance >= 24 && distance<= 33){
      myDisplay.writeStr("t4.txt", "LOW");
    }
    if(distance >= 12 && distance <= 24){
      myDisplay.writeStr("t4.txt", "MEDIUM");
    }
    if(distance >= 3 && distance <= 12){
      myDisplay.writeStr("t4.txt", "HIGH");
    }
    if(distance >= 0 && distance <= 3){
      myDisplay.writeStr("t4.txt", "OVERFLOW");
    }
    myDisplay.writeNum("x5.val", flowRate/100);
    myDisplay.writeNum("h5.val", flowRate/100);

    //litter raking
    if(ammoniaPPM >= 25){
      digitalWrite(litter, HIGH);
      myDisplay.writeStr("g7.txt", "Litter Raking is ON" );
      myDisplay.writeNum("g7.bco", 2016 );
      myDisplay.writeNum("g7.pco", 65535 );
      myDisplay.writeNum("g7.dir", 0 );
    }
    else{
      digitalWrite(litter, LOW);
      myDisplay.writeStr("g7.txt", "Litter Raking is OFF" );
      myDisplay.writeNum("g7.bco", 63488 );
      myDisplay.writeNum("g7.pco", 65535 );
      myDisplay.writeNum("g7.dir", 1 );
    }

    lastDisplayUpdate = millis();
  }

  //dashboard update
  if(millis()-lastUpdateAmmonia >= 20000){
    Serial.println("Updating Dashboard");
    ThingSpeak.setField(1, temperature);
    ThingSpeak.setField(2, humidity);
    ThingSpeak.setField(3, ammoniaPPM);
    ThingSpeak.setField(4, distance);
    ThingSpeak.setField(5, flowRate);
    ThingSpeak.writeFields(CHANNELID, APIKEY);
    lastUpdateAmmonia = millis();
  }
}
