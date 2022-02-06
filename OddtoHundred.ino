void setup() {
  Serial.begin(9600);

}

void loop() {
  
  for(int i = 1; i <= 101; i++)
  {
    if(i % 2 == 1)
    {
      Serial.println(i);
    }
  }
  delay(30000);
  
}
