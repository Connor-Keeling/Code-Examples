void setup() {
  Serial.begin(9600);
}

void loop() {
  
  Serial.print("What was the test out of: ");
  while(!Serial.available()){}
  float testTotal = Serial.parseFloat();
  Serial.println(testTotal);
  Serial.read();

  Serial.print("What mark did you get: ");
  while(!Serial.available()){}
  float mark = Serial.parseFloat();
  Serial.println(mark);
  Serial.read();

  float percentage = mark / testTotal * 100;

  Serial.print("Your mark is: ");
  Serial.println(percentage);
}
