void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print("Enter a number between 1 and 1000: ");
  while(!Serial.available()){}
  int num = Serial.parseInt();
  Serial.println(num);
  Serial.read();

  int sum = 0;
  for(int i = 1; i <= num; i++)
  {
    sum = sum + i;
  }
  
  if(num > 0 && num < 1001)
  {
    Serial.println(sum);
  }
  else
  {
    Serial.println("That is not a valid number");
  }

}
