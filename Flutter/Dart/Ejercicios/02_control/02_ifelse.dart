import 'dart:io';

main() {
  stdout.writeln('¿Cual es tu edad?');
  int edad = int.parse(stdin.readLineSync() ?? '0');

  /*  if (edad >= 18) {
    stdout.writeln('Eres mayor de edad(viejo)');
  } else {
    stdout.writeln('Eres menor de edad');
  } */

  if (edad >= 21) {
    stdout.writeln('ciudadano');
  } else if (edad >= 18) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('menor de edad');
  }
}
