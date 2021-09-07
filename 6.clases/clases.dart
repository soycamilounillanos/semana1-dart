class Persona {
  String nombre;
  String apellido;
  int edad;
  Persona(this.nombre, this.apellido, this.edad);
}

class Padre extends Persona{
  int hijos;
  Padre({ required this.hijos, required nombre, required apellido}): super(nombre, apellido, 123);
}

class Madre extends Persona{
  int hijos;
  Madre(this.hijos, String nombre, String apellido, int edad): super(nombre, apellido, edad);
}

abstract class Vehiculo {
  String? placa;
  bool estaEncendido();
}
mixin Terrestre {
  int? llantas;
  tipoVehiculo() => "Terrestre";
}

class Taxi extends Vehiculo with Terrestre{
  bool estaEncendido() => false;
}

main() {
  var persona = Persona("juan", "camacho", 12);
  print("${persona.nombre} ${persona.apellido} ${persona.edad}");
  var padre = Padre(hijos: 2, nombre: "carlos", apellido: "camacho");
  print("${padre.nombre} ${padre.apellido} ${padre.edad}");
  var madre = Madre(2, "maria", "magdalena", 11);
  var taxi = Taxi();
  print(taxi.tipoVehiculo());
  print(taxi.estaEncendido());
}
