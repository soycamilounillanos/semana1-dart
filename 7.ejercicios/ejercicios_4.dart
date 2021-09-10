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
  String? estudios;
  Artista(String nombre, String apellido, int edad, this.tipo): super(nombre, apellido, edad);
}

class Ingeniero extends Persona with HabilidadLectura, HabilidadDibujo {
  bool esDesarrollador;
  int ingles;
  int experiencia;
  Ingeniero(String nombre, String apellido, int edad, this.esDesarrollador, this.ingles, this.experiencia): super(nombre, apellido, edad);
}

class Doctor extends Persona with HabilidadLectura {
  String especialista;
  int pasientes;
  int estudio;
  Doctor(String nombre, String apellido, int edad, this.especialista, this.pasientes, this.estudio): super(nombre, apellido, edad);
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
  String liga;
  int medallas;
  Boxeador(String nombre, String apellido, int edad, String pais, this.peso, this.liga, this.medallas): super("Boxeo", nombre, apellido, edad, pais, null);
}

main() {
  var persona = Persona("juan", "camilo", 26);
  print("Autor: ${persona.nombre}");
  
  var artista = Artista("leonardo", "davinci", 50, "pintor");
  print("${artista.nombre}[${artista.tipo}] -> ${artista.dibujar()}");
  
  var ingeniero = Ingeniero("leonardo", "davinci", 50, false, 10, 10);
  print("${ingeniero.nombre} -> ${ingeniero.leer()}");
  var ingeniero2 = Ingeniero("juan", "camilo", 26, true, 10, 10);
  print("${ingeniero2.nombre}[desarrollador: ${ingeniero2.esDesarrollador}] -> ${ingeniero2.dibujar()}");
  
  var doctor = Doctor("rick", "sanchez", 70, "de todito",0, 10);
  print("${doctor.nombre}[${doctor.especialista}] -> ${doctor.leer()}");
  
  var atleta = Atleta("BMX", "mariana", "pajon", 28, "CO", 7);
  print("${atleta.nombre}[${atleta.deporte}] -> ${atleta.calentar()}");
  
  var boxeador = Boxeador("mike", "tyson", 55, "BR", "pluma", "wwc", 10);
  print("${boxeador.nombre} -> ${boxeador.calentar()}");
  print("${boxeador.nombre} -> ${boxeador.ejercitar()}");
  print("${boxeador.nombre}[${boxeador.peso}] -> ${boxeador.boxear()}");
}
