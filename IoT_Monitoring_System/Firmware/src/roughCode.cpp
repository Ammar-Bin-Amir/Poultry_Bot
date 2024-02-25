    // //update iot dashboard    
    // if(millis()-lastUpdateAmmonia >= 16000){
    //   Serial.println("Updating Ammonia");
    //   ThingSpeak.writeField(CHANNELID,3,ammoniaPPM, APIKEY);
    //   lastUpdateAmmonia = millis();
    // }
    // delay(500);
    // if(millis()-lastUpdateTemp >= 16000){
    //   intTemp = temperature;
    //   Serial.println("Updating Temp");
    //   ThingSpeak.writeField(CHANNELID,1,int(temperature), APIKEY);
    //   lastUpdateTemp = millis();
    // }
    // delay(500);
    // if(millis()-lastUpdateHumidity >= 16000){
    //   Serial.println("Updating Humidity");
    //   ThingSpeak.writeField(CHANNELID,2,humidity, APIKEY);
    //   lastUpdateHumidity = millis();
    // }
    // //other three params
    // delay(500);
    // if(millis()-lastUpdateLiquid > 16000){
    //   Serial.println("Updating Liquid Level");
    //   ThingSpeak.writeField(CHANNELID,4,54, APIKEY);
    //   lastUpdateLiquid = millis();
    // }
    // delay(500);
    // if(millis()-lastUpdateFlow > 16000){
    //   Serial.println("Updating Flow Rate");
    //   ThingSpeak.writeField(CHANNELID,5,4, APIKEY);
    //   lastUpdateFlow = millis();
    // }
    // delay(500);
    // if(millis()-lastUpdateBattery > 16000){
    //   Serial.println("Updating Battery Level");
    //   ThingSpeak.writeField(CHANNELID,6,98, APIKEY);
    //   lastUpdateBattery = millis();
    // }

    // if (WiFi.status() == WL_CONNECTED) {
    // // Create an HTTPClient object
    // HTTPClient http;

    // // Specify the target URL
    // String url = "https://api.thingspeak.com/update?api_key=PKNGA4A9TABT1FN2&field1=56";

    // // Send the GET request
    // http.begin(url);
    // int httpResponseCode = http.GET();

    // // Check the response code
    // Serial.print("HTTP Response code: ");
    // Serial.println(httpResponseCode);

    // // Close the connection
    // http.end();
    // }



        //pump
  // String command = Serial2.readStringUntil('\n');
  // if (command == "1") {
  //     Serial.println("Turn PUMP ON");
  //     digitalWrite(pumpPin, LOW);
  //   }
  // else if (command == "0") {
  //     Serial.println("Turn PUMP OFF");
  //     digitalWrite(pumpPin, HIGH);
  //   }
  // Serial.println(lastPrintTime);
  // Serial.println(millis());
  // Serial.println("--------------");