main() {
  //etiquetas para los loops
  outerLoop:
  for (int i = 0; i < 5; i++) {
    print(' valor de III: $i');
    innerLoop:
    for (int j = 0; j < 5; j++) {
      print(' valor de j: $j');

      if (j == 2) {
        break outerLoop;
      }
    }
  }
}
