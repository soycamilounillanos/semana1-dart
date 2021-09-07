/**
Tome dos listas, por ejemplo:
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
y escriba un programa que devuelva una lista que contenga solo los
elementos que son comunes entre ellos (sin duplicados). Asegúrese de que
su programa funcione en dos listas de diferentes tamaños.
 */
main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> c = [];
  for (var i = 0; i < a.length; i++) {
    if (b.indexOf(a[i]) != -1 && c.indexOf(a[i]) != -1) {
      c.add(a[i]);
    }
  }
  print(c);
}