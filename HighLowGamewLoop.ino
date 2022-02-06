int randNum;

void setup() {
  Serial.begin(9600);
  randomSeed(analogRead(0));
  randNum = random(1,11);
}

void loop() {

  int guess;
  int numGuesses = 0;
  do
  {
    Serial.print("Enter your guess: ");
    while(!Serial.available()){}
    guess = Serial.parseInt();
    Serial.println(guess);
    Serial.read();
    if(guess > randNum)
    {
      Serial.println("Your guess was too high.");
    }
    else if(guess < randNum)
    {
      Serial.println("Your guess was too low.");
    }
    numGuesses = numGuesses + 1;
  }
  while(guess != randNum);
  
  Serial.println("Correct!");
  Serial.print("It took you ");
  Serial.print(numGuesses);
  Serial.println(" guesses.");
  randomSeed(analogRead(0));
  randNum = random(1,11);
    
}
