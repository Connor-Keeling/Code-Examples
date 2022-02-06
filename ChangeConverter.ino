void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print("Enter the amount of change (0-99): ");
  while(!Serial.available()){}
  int change = Serial.parseInt();
  Serial.println(change);
  Serial.read();

  int quarters = change / 25;
  change = change - ( quarters * 25);
  int dimes = change / 10;
  change = change - ( dimes * 10);
  int nickels = (change % 25) / 5;
  change = change - ( nickels * 5);
  int pennies = change;

  Serial.print(change);
  Serial.print(" cents requires ");
  Serial.print(quarters);
  Serial.print(" quarters, ");
  Serial.print(dimes);
  Serial.print(" dimes, ");
  Serial.print(nickels);
  Serial.print(" nickels, and ");
  Serial.print(pennies);
  Serial.println(" pennies.");

}
