void main()
{
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('Lista original $numbers');
  
  print('Lista original ${numbers.length}');
  
  print('Lista en 0 ${numbers[0]}');

  print('primero ${numbers.first}');
  print('ultimo ${numbers.last}');
  
  
  //este elemento regresa un elemento iterable
  print('Reversed ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');
  
  final numbersGreaterThan5 = numbers.where((num) {
    return num>5;
  });
  
  print('number > 5: $numbersGreaterThan5');
}