/**
 * Un operador es un símbolo que le dice al compilador
 * qué debe de realizar una tarea
 * matemática, relacional o logico
 * y debe producir un resultado
 */
main() {
  int a = 10 + 5; // + 15
  a = 20 - 10; // - 10
  a = 10 * 2; // * 20

  double b = 10 / 2; // / 5

  b = 10.0 % 3; // & 1 El sobrante de la division sintetica

  b = -b; // -expr Es usado para cambiar el valor de la expresion

  int c =
      10 ~/ 3; // ~/  3  Division comun y corriente pero solo la parte entera(~)

  int d = 1;

  d++; // ++ 2 operador para incrementar
  d--; // -- 1 operador para sustraer

  d += 2; // += 3
  d -= 2; // -= 1  *= /=
}
