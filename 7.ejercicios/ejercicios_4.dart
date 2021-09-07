/**
Realizar un programa que implemente herencia y mixin del siguiente
diagrama. Los resultados por consola deben evidenciar el uso de extend y
mixin.
Cada clase debe tener mínimo un método y tres atributos.
 */
class Persona {
  String nombre;
  String apellido;
  int edad;
  Persona(this.nombre, this.apellido, this.edad);
}

mixin HabilidadDibujo {
  dibujar() => "dibujando";
}
mixin HabilidadLectura {
  leer() => "leyendo";
}
mixin HabilidadEjercicio {
  ejercitar() => "ejercitando";
}
mixin HabilidadBoxeo {
  boxear() => "boxeando";
}

class Artista extends Persona with HabilidadDibujo {
  String tipo;
  Artista(String nombre, String apellido, int edad, this.tipo): super(nombre, apellido, edad);
}

class Ingeniero extends Persona with HabilidadLectura, HabilidadDibujo {
  bool esDesarrollador;
  Ingeniero(String nombre, String apellido, int edad, this.esDesarrollador): super(nombre, apellido, edad);
}

class Doctor extends Persona with HabilidadLectura {
  String especialista;
  Doctor(String nombre, String apellido, int edad, this.especialista): super(nombre, apellido, edad);
}

class Atleta extends Persona {
  String deporte;
  int? experiencia;
  String pais;
  calentar() { return "calentando"; }
  Atleta(this.deporte, String nombre, String apellido, int edad, this.pais, this.experiencia): super(nombre, apellido, edad);
}

class Boxeador extends Atleta with HabilidadBoxeo, HabilidadEjercicio {
  String peso;
  Boxeador(String nombre, String apellido, int edad, String pais, this.peso): super("Boxeo", nombre, apellido, edad, pais, null);
}

main() {
  var persona = Persona("juan", "camilo", 26);
  print("Autor: ${persona.nombre}");
  
  var artista = Artista("leonardo", "davinci", 50, "pintor");
  print("${artista.nombre}[${artista.tipo}] -> ${artista.dibujar()}");
  
  var ingeniero = Ingeniero("leonardo", "davinci", 50, false);
  print("${ingeniero.nombre} -> ${ingeniero.leer()}");
  var ingeniero2 = Ingeniero("juan", "camilo", 26, true);
  print("${ingeniero2.nombre}[desarrollador: ${ingeniero2.esDesarrollador}] -> ${ingeniero2.dibujar()}");
  
  var doctor = Doctor("rick", "sanchez", 70, "de todito");
  print("${doctor.nombre}[${doctor.especialista}] -> ${doctor.leer()}");
  
  var atleta = Atleta("BMX", "mariana", "pajon", 28, "CO", 7);
  print("${atleta.nombre}[${atleta.deporte}] -> ${atleta.calentar()}");
  
  var boxeador = Boxeador("mike", "tyson", 55, "BR", "pluma");
  print("${boxeador.nombre} -> ${boxeador.calentar()}");
  print("${boxeador.nombre} -> ${boxeador.ejercitar()}");
  print("${boxeador.nombre}[${boxeador.peso}] -> ${boxeador.boxear()}");
}