main() {
  var v1 = 5;
  var v2 = 4.0;
  
  var v3;
  String? v4 = null;
  
  print(v1 > v2 ? "si, v1 > v2" : "no, v1 < v2");
  print(v3 ?? "v3 no definido");
  print(v4 ?? "v4 es nullo");
}
