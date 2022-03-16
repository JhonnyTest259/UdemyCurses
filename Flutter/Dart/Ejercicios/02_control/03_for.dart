import 'dart:io';

main() {
  stdout.writeln('Ingrese una base: ');
  int base = int.parse(stdin.readLineSync() ?? '2');

  for (var i = 1; i < 10; i++) {
    print('$base * $i = ${base * i}');
  }
}
