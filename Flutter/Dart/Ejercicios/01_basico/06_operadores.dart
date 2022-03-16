main() {
  //Operadores de asignacion
  int? a; //= 10;
  int? b;

  //b ??= 20; // Asignar el valor únicamente si la variable es null

  //print(b);

  //Operadores condicionales

  int c = 28;
  String resp = c > 25
      ? 'C es mayor a 25'
      : 'C es menor a 25'; //Condicional con operador ternario

  //print(resp);

  //int? d = b ?? a ?? 100;

  //print(d);

  //Operadores relacionales
  //Todos retornan un valor booleano

  /* 
    > Mayor que
    < Menor que
    >= Mayor o igualque
    <= Menor o igualque

    == revisa si dos objetos son iguales
    != revisa si dos objetos son diferentes
  */

  String persona1 = 'Fernando';
  String persona2 = 'alberto';

  //print(persona1 == persona2);
  //print(persona1 != persona2);

  int x = 20;
  int y = 30;
/* 
  print(x > y); //False
  print(x < y); //true
  print(x >= y); //false
  print(x <= y); //true */

  //Operador de tipo

  int i = 10;
  String j = '10';

  print(i is int);
  print(j is! int);
}
