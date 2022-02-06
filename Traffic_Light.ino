int redLED = 2;
int yellowLED = 4;
int greenLED = 6;

void setup()
{
  Serial.begin(9600);
  pinMode(2, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(6, OUTPUT);
}

void loop()
{
  Serial.println("What light should be on?");
  Serial.println("1. Red Light");
  Serial.println("2. Yellow Light");
  Serial.println("3. Green Light");
  Serial.print("Your choice: ");
  while(!Serial.available()){}
  int light = Serial.parseInt();
  Serial.println(light);
  Serial.read();
  
  if(light == 1)
  {
    digitalWrite(redLED, HIGH);
    digitalWrite(yellowLED, LOW);
    digitalWrite(greenLED, LOW);
  }
  else if(light == 2)
  {
    digitalWrite(redLED, LOW);
    digitalWrite(yellowLED, HIGH);
    digitalWrite(greenLED, LOW);
  }
  else if(light == 3)
  {
    digitalWrite(redLED, LOW);
    digitalWrite(yellowLED, LOW);
    digitalWrite(greenLED, HIGH);
  }
  
}
