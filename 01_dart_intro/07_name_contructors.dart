void main()
{
  
  final Hero wolverine = Hero(
    name: 'Logan', 
    power: 'Regeneracion',
    isAlive: false
  );
  
  final Map<String, dynamic> rawJson={
    'name': 'Tony Stark', 
    'power': 'Inteligencia',
    'isAlive': false
  };
  
  
  //esta es la forma complicada de edneviar las cosas
  final Hero ironman = Hero(
    name: rawJson['name'], 
    power: rawJson['power'],
    isAlive: rawJson['isAlive'] ?? false
  );
  
  //pero al crear un nuevo contructor podemos hacer lo mismo de la siguiente manera
  final Hero ironman2 = Hero.fromJson(rawJson);

  print('ironman 1: $ironman');
  print('ironman 2: $ironman2');
  print(ironman.name);
  print(ironman.power);
}

class Hero
{
  
  String? name;
  String? power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
   });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'not name found',
      power = json['power'] ?? 'not power found',
      isAlive = json['isAlive'] ?? 'Unknow';
  
  //Hero(String pName, String pPower)
  //  : name =pName,
  //   power = pPower;
  
  @override
  String toString()
  {
    return '$name, $power. ${isAlive ? 'Si' : 'No'}' ;
  }
}