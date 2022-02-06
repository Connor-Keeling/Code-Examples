void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print("Enter your first number: ");
  while(!Serial.available()){}
  float num1 = Serial.parseFloat();
  Serial.println(num1);
  Serial.read();

  Serial.print("Enter your second number: ");
  while(!Serial.available()){}
  float num2 = Serial.parseFloat();
  Serial.println(num2);
  Serial.read();
  Serial.println("  ");

  Serial.println("Operation Menu");
  Serial.println("1. Addition");
  Serial.println("2. Subtraction");
  Serial.println("3. Multiplication");
  Serial.println("4. Division");
  Serial.print("Enter the number associated with the operation you would like to do: ");
  while(!Serial.available()){}
  int operation = Serial.parseInt();
  Serial.println(operation);
  Serial.read();
  Serial.println("  ");

  if(operation == 1)
  {
     float answer = num1 + num2;
     Serial.print(num1);
     Serial.print(" + ");
     Serial.print(num2);
     Serial.print(" = ");
     Serial.println(answer);
     Serial.println("  ");
  }
  else if(operation == 2)
  {
    float answer = num1 - num2;
    Serial.print(num1);
    Serial.print(" - ");
    Serial.print(num2);
    Serial.print(" = ");
    Serial.println(answer);
    Serial.println("  ");
  }
  else if(operation == 3)
  {
    float answer = num1 * num2;
    Serial.print(num1);
    Serial.print(" * ");
    Serial.print(num2);
    Serial.print(" = ");
    Serial.println(answer);
    Serial.println("  ");
  }
  else if(operation == 4)
  {
    float answer = num1 / num2;
    Serial.print(num1);
    Serial.print(" / ");
    Serial.print(num2);
    Serial.print(" = ");
    Serial.println(answer);
    Serial.println("  ");
  }

}
