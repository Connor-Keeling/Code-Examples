void setup() {
  Serial.begin(9600);
  randomSeed(analogRead(0));
}

void loop() {
  int num1 = random(01, 100);
  int num2 = random(01, 100);
  int num3 = random(01, 100);

  Serial.print("Your code is: ");
  Serial.print(num1);
  Serial.print(num2);
  Serial.println(num3);
  delay(1000);
  
}
