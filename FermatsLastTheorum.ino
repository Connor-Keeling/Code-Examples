void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.println("Fermat's Last Theorum states that there are no integers a, b, and c, such that a^n + b^n = c^2, except for when n <= 2.");
  Serial.println("To test Fermat's Last Theorum you will enter values for a, b, c, and n.");

  Serial.print("Enter a value for a: ");
  while(!Serial.available()){}
  unsigned int a = Serial.parseInt();
  Serial.println(a);
  Serial.read();

  Serial.print("Enter a value for b: ");
  while(!Serial.available()){}
  unsigned int b = Serial.parseInt();
  Serial.println(b);
  Serial.read();

  Serial.print("Enter a value for c: ");
  while(!Serial.available()){}
  unsigned int c = Serial.parseInt();
  Serial.println(c);
  Serial.read();

  Serial.print("Enter a value for n: ");
  while(!Serial.available()){}
  unsigned int n = Serial.parseInt();
  Serial.println(n);
  Serial.read();
  Serial.println("   ");

  unsigned int leftside = ceil(pow(a,n) + pow(b,n));
  unsigned int rightside = ceil(pow(c,n));
  
  if(leftside == rightside && n > 2 && leftside != 0)
  {
    Serial.println("HOLY SMOKES, FERMAT WAS WRONG!");
  }
  else if(leftside == rightside && n <= 2)
  {
    Serial.print("The sides of the equation are equal to eachother, however n <= 2. Therefore, the answer does not satisfy the requirements to prove");
  }
  else if(leftside != rightside)
  {
    Serial.print("Those numbers do not work. Try again.");
  }
  else if(leftside == 0 || rightside == 0 )
  {
    Serial.print("An error has occured. Please try again");
  }

  Serial.println("   ");
  
}
