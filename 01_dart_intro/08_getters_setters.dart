void main()
{
  final mySquare=Square(side:-4.0);
  
  mySquare.side=5;
  
  print('area of square ${mySquare.area}');
}

class Square
{
  
  double _side;
  
  Square({ required double side })
    : assert(side >= 0, 'Value of side must be a positive number'),
      _side = side;
  
   double get area
  {
    return _side * _side;
  }
  
  set side(double value)
  {
    print('setting new value $value');
    if(value < 0) throw 'Value of side must be a positive number';
    _side = value;
  }
  
  double calculateArea()
  {
    return _side * _side;
  }
  
}