int yellowLED = 2;
int greenLED = 4;

void setup()
{
  Serial.begin(9600);
  pinMode(yellowLED, OUTPUT);
  pinMode(greenLED, OUTPUT);
}

void loop()
{
  Serial.println("An odd number will turn on the green LED, an even number will turn on the yellow LED.");
  Serial.print("Enter an integer: ");
  while(!Serial.available()){}
  int number = Serial.parseInt();
  Serial.println(number);
  Serial.read();

  int light = number % 2;
    
  if(light == 0 )
  {
    digitalWrite(yellowLED, HIGH);
    digitalWrite(greenLED, LOW);
  }
  else if(light == 1)
  {
    digitalWrite(yellowLED, LOW);
    digitalWrite(greenLED, HIGH);
  }
     
}
