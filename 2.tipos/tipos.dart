void main() {
  //Numericos
  int edad = 23;
  num edad_num = 23;
  
  double puntos = 23.4;
  num puntos_num = 23.4;
  
  //Cadenas de texto
  String texto1 = 'hola mundo';
  String texto2 = 'hola mundo';
  String texto3 = "It's";
  String texto4 = 'It\'s';
  String texto5 = "${edad} ${edad_num}";
  String texto6 = "a" + "b";
  String texto7 = "a" "b";
  String texto8 = "$texto4 $edad";
  String texto9 = """
  hola mundo
  tengo varias lineas
  """;
  String texto10 = r"\hola r";
 
  print(texto1);
  print(texto2);
  print(texto3);
  print(texto4);
  print(texto5);
  print(texto6);
  print(texto7);
  print(texto8);
  print(texto9);
  print(texto10);
  
  String texto11 = "";
  if(texto11.isEmpty) print("texto 11 esta vacio");
  String? texto12 = null;
  if(texto12 == null) print("texto 12 es nulo");
  
  // Listas
  var lista1 = [1, 2, 3, 4];
  List<int> lista2 = [1, 2, 3, 4];
  var lista3 = [...lista1,...lista2];
  var lista5 = [lista1, lista2];
 
  List<int>? lista6 = null;
  var lista7= [...lista1,...?lista6];
  
  var listaSet = { 1, 2, 3, 4, 4, 3};
  
  print(lista1);
  print(lista1.last);
  print(lista1.reversed);
  print(lista2);
  print(lista3);
  print(lista5);
  print(lista6);
  print(listaSet);
  
  // map
  var map1 = {
    'red': "rojo",
    'blue': 'azul'
  };
  
  print(map1);
  map1['green'] = "verde";
  print(map1);
  map1.forEach((key, value) => print(value));
  map1.forEach((key, value){print(value);});
}
