void main() async
{
  
  print('inicio del programa');
  
  try
  {
    
    final value =await httpGet('https://fernando-herrera.com/cursos');
    print(value);
    
  }catch(err)
  {
    print('error: $err');
  }
  
  
  print('fin del programa');
}

 Future<String> httpGet(String url) async
 {
    await Future.delayed(const Duration(seconds:1));
    throw 'Error en la petición';
//       return 'repsuesta de la peticion http';
 }