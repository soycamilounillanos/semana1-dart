/**
Validar si una cadena es un palíndromo o no.
 */
bool esPalindromo(String palabra) {
  var palabra_reves = palabra.split("").reversed.join();
  return palabra == palabra_reves;
}
main() {
  var palabra = "reconocer";
  if (esPalindromo(palabra)) {
    print("Es palindromo");
  } else {
    print("NO es palindromo");
  }
}