//Include the libraries
#include <MQUnifiedsensor.h>  // MQ135 Enable
#include "DHT.h"
#include <WiFi.h>
#include "ThingSpeak.h"
#include <HardwareSerial.h>
// SoftwareSerial SoftSerial(4, 5);
const char* ssid = "Infinix HOT 10";   // your network SSID (name) 
const char* password = "sohaib1029";   // your network password
HardwareSerial SerialPort(2) ; //if using UART2
WiFiClient  client;

unsigned long myChannelNumber = 1;
const char * myWriteAPIKey = "6RZGR7W77JHKLJK2";

#ifndef ESP32
#pragma message(THIS EXAMPLE IS FOR ESP32 ONLY!)
#error Select ESP32 board.
#endif

const int trigPin = 5;
const int echoPin = 18;
// const int pumpRelay = 
//define sound speed in cm/uS
#define SOUND_SPEED 0.034
#define CM_TO_INCH 0.393701

long duration;
float distanceCm;
float distanceInch;

#define SENSOR  2
 
long currentMillis = 0;
long previousMillis = 0;
int interval = 1000;
boolean ledState = LOW;
float calibrationFactor = 4.5;
volatile byte pulseCount;
byte pulse1Sec = 0;
float flowRate;
unsigned long flowMilliLitres;
unsigned int totalMilliLitres;
float flowLitres;
float totalLitres;

//Definitions
#define board ("ESP-32")          // Development Board
#define Voltage_Resolution 3.3    // VCC
#define pin 15                    // Analog Input 0 of ESP32
#define type "MQ-135"             // MQ135
#define ADC_Bit_Resolution 12     // For ESP32
#define RatioMQ135CleanAir 3.6    // RS / R0 = 3.6 ppm

//Declare Sensor
MQUnifiedsensor MQ135(board, Voltage_Resolution, ADC_Bit_Resolution, pin, type);
int dhtPin = 22;
DHT dht(dhtPin, DHT22);

void IRAM_ATTR pulseCounter()
{
  pulseCount++;
}

void setup()
{
  //Init the serial port communication - to debug the library
  Serial.begin(115200);
  SerialPort.begin(15200, SERIAL_8N1, 16, 17); 
  //Set math model to calculate the PPM concentration and the value of constants
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin, INPUT); // Sets the echoPin as an Input
  MQ135.setRegressionMethod(1); //_PPM =  a*ratio^b
  MQ135.setA(110.47); MQ135.setB(-2.862); // Configure the equation to to calculate C02 concentration
  dht.begin();
  // WiFi.mode(WIFI_STA);   
  
  ThingSpeak.begin(client);  // Initialize ThingSpeak
    /*
    Exponential regression:
  GAS      | a      | b
  CO       | 605.18 | -3.937  
  Alcohol  | 77.255 | -3.18 
  CO2      | 110.47 | -2.862
  Toluen   | 44.947 | -3.445
  NH4      | 102.2  | -2.473
  Aceton   | 34.668 | -3.369
  */
  
  MQ135.init(); 
  Serial.print("Calibrating please wait.");
  float calcR0 = 0;
  for(int i = 1; i<=10; i ++)
  {
    MQ135.update(); // Update data, the arduino will read the voltage from the analog pin
    calcR0 += MQ135.calibrate(RatioMQ135CleanAir);
    Serial.print(".");
  }
  MQ135.setR0(calcR0/10);
  Serial.println("  done!.");
  
  if(isinf(calcR0)) {Serial.println("Warning: Conection issue, R0 is infinite (Open circuit detected) please check your wiring and supply"); while(1);}
  if(calcR0 == 0){Serial.println("Warning: Conection issue found, R0 is zero (Analog pin shorts to ground) please check your wiring and supply"); while(1);}
  MQ135.serialDebug(true);

  pinMode(SENSOR, INPUT_PULLUP);
 
  pulseCount = 0;
  flowRate = 0.0;
  flowMilliLitres = 0;
  totalMilliLitres = 0;
  previousMillis = 0;
  attachInterrupt(digitalPinToInterrupt(SENSOR), pulseCounter, FALLING);
}

void loop()
{
// Clears the trigPin
digitalWrite(trigPin, LOW);
delayMicroseconds(2);
// Sets the trigPin on HIGH state for 10 micro seconds
digitalWrite(trigPin, HIGH);
delayMicroseconds(10);
digitalWrite(trigPin, LOW);

// Reads the echoPin, returns the sound wave travel time in microseconds
duration = pulseIn(echoPin, HIGH);

// Calculate the distance
distanceCm = duration * SOUND_SPEED/2;

// Convert to inches
distanceInch = distanceCm * CM_TO_INCH;

// Prints the distance in the Serial Monitor
Serial.print("Distance (cm): ");
Serial.println(distanceCm);
Serial.print("Distance (inch): ");
Serial.println(distanceInch);
 float NH4, CO2, ALC;
  for(int i = 0; i<=3; i++)
  {
    switch (i)
    {
     case 1:
            MQ135.setA(110.47); MQ135.setB(-2.862); // Configure the equation to to calculate C02 concentration
            MQ135.update(); // Update data, the arduino will read the voltage from the analog pin
            MQ135.readSensor(); // Sensor will read PPM concentration using the model, a and b values set previously or from the setup
            CO2 = MQ135.ppmprint(1);
            Serial.print("CO2 : ");
            Serial.print(CO2);
            break;
     case 2:
            MQ135.setA(102.2); MQ135.setB(-2.473); // Configure the equation to to calculate NH4 concentration
            MQ135.update(); // Update data, the arduino will read the voltage from the analog pin
            MQ135.readSensor(); // Sensor will read PPM concentration using the model, a and b values set previously or from the setup
            NH4 = MQ135.ppmprint(1);
            Serial.print("NH4 : ");
            Serial.print(NH4);
            break;  
    }
  }
  float h, t;
  h = dht.readHumidity();
  t = dht.readTemperature();

  Serial.print("Humidity : ");
  Serial.print(h);

  Serial.print("Temperature : ");
  Serial.println(t);
  currentMillis = millis();
  if (currentMillis - previousMillis > interval) 
  {
    
    pulse1Sec = pulseCount;
    pulseCount = 0;
 
    // Because this loop may not complete in exactly 1 second intervals we calculate
    // the number of milliseconds that have passed since the last execution and use
    // that to scale the output. We also apply the calibrationFactor to scale the output
    // based on the number of pulses per second per units of measure (litres/minute in
    // this case) coming from the sensor.
    flowRate = ((1000.0 / (millis() - previousMillis)) * pulse1Sec) / calibrationFactor;
    previousMillis = millis();
 
    // Divide the flow rate in litres/minute by 60 to determine how many litres have
    // passed through the sensor in this 1 second interval, then multiply by 1000 to
    // convert to millilitres.
    flowMilliLitres = (flowRate / 60) * 1000;
    flowLitres = (flowRate / 60);
    // Add the millilitres passed in this second to the cumulative total
    totalMilliLitres += flowMilliLitres;
    totalLitres += flowLitres;
    
    // Print the flow rate for this second in litres / minute
    Serial.print("Flow rate: ");
    Serial.print(float(flowRate));  // Print the integer part of the variable
    Serial.print("L/min");
    Serial.print("\t");       // Print tab space
  }
  delay(1000);
  // ThingSpeak.writeField(myChannelNumber, 1, t, myWriteAPIKey);
  SerialPort.print("n1.val=");
  SerialPort.print(floatToInt(t));
  SerialPort.write(0xff);
  SerialPort.write(0xff);
  SerialPort.write(0xff);

  if(distanceInch >= 0 && distanceInch <= 5 ){
    SerialPort.print("t4.txt=");
    SerialPort.print("HIGH");
    SerialPort.write(0xff);
    SerialPort.write(0xff);
    SerialPort.write(0xff);
  }

}

int floatToInt(float val)
{
  return val;
}