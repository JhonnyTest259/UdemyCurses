import 'dart:io';

main() {
  //imprimir en el cmd
  stdout.write('¿Cual es tu nombre?\n');

  //leer informacion
  String nombre = stdin.readLineSync() ?? 'no hay valor';

  stdout.write('el nombre es: $nombre');
}
