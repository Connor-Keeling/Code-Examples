void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print("Enter the value of x1: ");
  while(!Serial.available()){}
  float x1 = Serial.parseFloat();
  Serial.println(x1);
  Serial.read();

  Serial.print("Enter the value of y1: ");
  while(!Serial.available()){}
  float y1 = Serial.parseFloat();
  Serial.println(y1);
  Serial.read();

  Serial.print("Enter the value of x2: ");
  while(!Serial.available()){}
  float x2 = Serial.parseFloat();
  Serial.println(x2);
  Serial.read();

  Serial.print("Enter the value of y2: ");
  while(!Serial.available()){}
  float y2 = Serial.parseFloat();
  Serial.println(y2);
  Serial.read();

  float distance = sqrt( sq(x2 - x1) + sq(y2 - y1));

  Serial.print("The distance between the points is ");
  Serial.print(distance);
  Serial.println(" units.");
  
}
