validarNombre(String nombre) {
  if (nombre.length > 4) throw FormatException("Supera la longitud");
}

main() {
  String nombre = "cami";
  print(nombre);
  try {
    validarNombre(nombre);
    throw Exception("falla si o si");
  } on FormatException catch (e) {
    print(e.message);
  } catch(e) {
    print("algo salio mal");
  }
}
