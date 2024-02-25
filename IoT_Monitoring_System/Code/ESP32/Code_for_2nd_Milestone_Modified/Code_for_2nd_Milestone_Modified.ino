#include <WiFi.h>

const char* ssid = "MyWiFi";          // Replace with your Wi-Fi network SSID
const char* password = "12345678";    // Replace with your Wi-Fi network password

void setup()
{
  Serial.begin(115200);

  // Connect to Wi-Fi
  WiFi.begin(ssid, password);
  Serial.print("Connecting to ");
  Serial.print(ssid);

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(1000);
    Serial.print(".");
  }

  Serial.println();
  Serial.print("Connected! IP address: ");
  Serial.println(WiFi.localIP());
}
void loop()
{
  // Your main code goes here
  // For example, you can read sensors, send data, etc.
}
