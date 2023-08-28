void main()
{
  
  print(greetEveryone());
  
  print('Suma ${addTwoNumbers(10,2)}');
  
  print('Suma ${addTwoNumbersOptional(10)}');
  
  print(greetPerson(name : 'Persona', message : 'Hi, '));
}

String greetEveryone() => 'hello everyone';

int addTwoNumbers(int a, int b) => a+b;

int addTwoNumbersOptional(int a, [int b = 0])
{
  return a+b;
}


String greetPerson({required String name, String message = 'Hola,'})
{
  return '$message persona';
}