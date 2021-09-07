/**
Crear una lista dinámica de 6 elementos, en la cual se recolectarán edades
de personas. Como resultado el programa mostrará la edad mayor, menor y
el promedio de edades ingresadas.
 */
import 'dart:math';

main() {
  var rng = new Random();
  var cantidad = 6;
  List<int> edades = [];
  for (var i = 0; i < cantidad; i++) {
    edades.add(rng.nextInt(100));
  }
  edades.sort();
  print("edades: ${edades}");
  print("menor: ${edades.first}");
  print("mayor: ${edades.last}");
  var promedio = edades.reduce((a, b) => a + b)/cantidad;
  print("promedio: ${promedio}");
}