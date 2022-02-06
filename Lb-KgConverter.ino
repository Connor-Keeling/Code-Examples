void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print("Enter the number of pounds to be converted: ");
  while(!Serial.available()){}
  float pound = Serial.parseFloat();
  Serial.println(pound);
  Serial.read();

  float conversionRatio = 0.453592;
  float kilograms = pound * conversionRatio;
  
  Serial.print(pound);
  Serial.print(" lbs is equal to ");
  Serial.print(kilograms);
  Serial.println(" kgs.");
  
}
