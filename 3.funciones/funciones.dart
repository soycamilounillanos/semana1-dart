obtener() { return "A"; }
String obtener1(String a) => "hola $a";
String obtener2({String a = "A", required String b, String? c}) {
  return "hola $a $b $c";
}
obtener3(String a, String? b, [String? c]) { return "hola $a $b $c"; }

main() {
  print(obtener());
  print(obtener1("A"));
  print(obtener2(b: "B", c: null));
  print(obtener2(a: "A", b: "B", c: "C"));
  print(obtener3("A", null));
  print(obtener3("A", "B"));
  print(obtener3("A", "B", "C"));
}
