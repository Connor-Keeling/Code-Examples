int leftLED = 6;
int midLED = 4;
int rightLED = 2;

void setup()
{
  Serial.begin(9600);
  pinMode(leftLED, OUTPUT);
  pinMode(midLED, OUTPUT);
  pinMode(rightLED, OUTPUT);
}

void loop()
{
  Serial.print("Enter the first number: ");
  while(!Serial.available()){}
  int a = Serial.parseInt();
  Serial.println(a);
  Serial.read();
  
  Serial.print("Enter the second number: ");
  while(!Serial.available()){}
  int b = Serial.parseInt();
  Serial.println(b);
  Serial.read();
  
  Serial.print("Enter the third number: ");
  while(!Serial.available()){}
  int c = Serial.parseInt();
  Serial.println(c);
  Serial.read();
  Serial.println("   ");
  
  if(a > b && a > c)
  {
    digitalWrite(leftLED, HIGH);
    digitalWrite(midLED, LOW);
    digitalWrite(rightLED, LOW);
  }
  else if(b > a && b > c)
  {
    digitalWrite(leftLED, LOW);
    digitalWrite(midLED, HIGH);
    digitalWrite(rightLED, LOW);
  }
  else if(c > a && c >b)
  {
    digitalWrite(leftLED, LOW);
    digitalWrite(midLED, LOW);
    digitalWrite(rightLED, HIGH);
  }


  
}
