/*
  AnalogReadSerial

  Reads an analog input on pin 0, prints the result to the Serial Monitor.
  Graphical representation is available using Serial Plotter (Tools > Serial Plotter menu).
  Attach the center pin of a potentiometer to pin A0, and the outside pins to +5V and ground.

  This example code is in the public domain.

  https://www.arduino.cc/en/Tutorial/BuiltInExamples/AnalogReadSerial
*/
int DD1, DD2, DD3, DD4;
int b1, b2, b3, b4;
int sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8;
// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  pinMode(1, INPUT);
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  pinMode(8, INPUT);
  pinMode(9, INPUT);
  pinMode(10, INPUT);
  pinMode(11, INPUT);
  pinMode(12, INPUT);


}

// the loop routine runs over and over again forever:
void loop() {
  // read the input on analog pin 0:
  DD1 = analogRead(A3);
  DD2 = analogRead(A2);
  DD3 = analogRead(A1);
  DD4 = analogRead(A0);

  b1 = digitalRead(1);
  b2 = digitalRead(2);
  b3 = digitalRead(3);
  b4 = digitalRead(4);

  sw1 = digitalRead(5);
  sw2 = digitalRead(6);
  sw3 = digitalRead(7);
  sw4 = digitalRead(8);
  sw5 = digitalRead(9);
  sw6 = digitalRead(10);
  sw7 = digitalRead(11);
  sw8 = digitalRead(12);

  // print out the value you read:
  Serial.print("A*");
  Serial.println(DD1);

  Serial.print("B*");
  Serial.println(DD2);

  Serial.print("C*");
  Serial.println(DD3);

  Serial.print("D*");
  Serial.println(DD4);

  Serial.print("E*");
  Serial.println(b1);

  Serial.print("F*");
  Serial.println(b2);

  Serial.print("G*");
  Serial.println(b3);

  Serial.print("H*");
  Serial.println(b4);

  Serial.print("I*");
  Serial.println(sw1);

  Serial.print("J*");
  Serial.println(sw2);

  Serial.print("K*");
  Serial.println(sw3);

  Serial.print("L*");
  Serial.println(sw4);

  Serial.print("M*");
  Serial.println(sw5);

  Serial.print("N*");
  Serial.println(sw6);

  Serial.print("O*");
  Serial.println(sw7);

  Serial.print("P*");
  Serial.println(sw8);

  delay(20);  // delay in between reads for stability
}
