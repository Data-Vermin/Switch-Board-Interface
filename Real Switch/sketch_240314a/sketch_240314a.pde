import processing.serial.*;
import oscP5.*;
import netP5.*;

Serial sePort;
String controlData[];
OscP5 oscP5;
NetAddress myRemoteLocation;

float D1 = 0;
float D2 = 0;
float D3 = 0;
float D4 = 0;

float B1;
float B2;
float B3;
float B4;

float SW1;
float SW2;
float SW3;
float SW4;
float SW5;
float SW6;
float SW7;
float SW8;

void setup(){
  size(100, 100);
 sePort = new Serial(this, Serial.list()[1], 9600);
 printArray(Serial.list());
 oscP5 = new OscP5(this,12100);
 myRemoteLocation = new NetAddress("127.0.0.1",12000);
}

void draw(){
   while (sePort.available() > 0){
     String inBuffer = sePort.readStringUntil('\n');
     //println(inBuffer);
     if (inBuffer != null){
       controlData = split(inBuffer, '*');
       if (controlData[0].charAt(0) == 'A'){
         D1 = float(controlData[1]);
         println(D1);
        } else if (controlData[0].charAt(0) == 'B'){
          D2 = float(controlData[1]);
          println(D2);
        } else if (controlData[0].charAt(0) == 'C'){
          D3 = float(controlData[1]);
          println(D3);
        } else if (controlData[0].charAt(0) == 'D'){
          D4 = float(controlData[1]);
          println(D4);
        } else if (controlData[0].charAt(0) == 'E'){
          B1 = float(controlData[1]);
          println(B1);
        } else if (controlData[0].charAt(0) == 'F'){
          B2 = float(controlData[1]);
          println(B2);
        } else if (controlData[0].charAt(0) == 'G'){
          B3 = float(controlData[1]);
          println(B3);
        } else if (controlData[0].charAt(0) == 'H'){
          B4 = float(controlData[1]);
          println(B4);
        } else if (controlData[0].charAt(0) == 'I'){
          SW1 = float(controlData[1]);
          println(SW1);
        } else if (controlData[0].charAt(0) == 'J'){
          SW2 = float(controlData[1]);
          println(SW2);
        } else if (controlData[0].charAt(0) == 'K'){
          SW3 = float(controlData[1]);
          println(SW3);
        } else if (controlData[0].charAt(0) == 'L'){
          SW4 = float(controlData[1]);
          println(SW4);
        } else if (controlData[0].charAt(0) == 'M'){
          SW5 = float(controlData[1]);
          println(SW5);
        } else if (controlData[0].charAt(0) == 'N'){
          SW6 = float(controlData[1]);
          println(SW6);
        } else if (controlData[0].charAt(0) == 'O'){
          SW7 = float(controlData[1]);
          println(SW7);
        } else if (controlData[0].charAt(0) == 'P'){
          SW8 = float(controlData[1]);
          println(SW8);
         }
   }
 }
 
 OscMessage myMessage = new OscMessage("/Control");
 myMessage.add(D1);
 myMessage.add(D2);
 myMessage.add(D3);
 myMessage.add(D4);
 
 myMessage.add(B1);
 myMessage.add(B2);
 myMessage.add(B3);
 myMessage.add(B4);
 
 myMessage.add(SW1);
 myMessage.add(SW2);
 myMessage.add(SW3);
 myMessage.add(SW4);
 myMessage.add(SW5);
 myMessage.add(SW6);
 myMessage.add(SW7);
 myMessage.add(SW8);
 
 oscP5.send(myMessage, myRemoteLocation);
}
