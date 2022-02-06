void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print("Enter a number: ");
  while(!Serial.available()){}
  int num = Serial.parseInt();
  Serial.println(num);
  Serial.read();

  for(int i = 1; i <= num; i++)
  {
    Serial.println(i);
  }

}
