void main(List<String> args) {
  String nombre = 'Fernando';
  String apellido = 'Herrera';
  String nombreCompleto = '$nombre' ' ' 'Herrera';

  print('String: $nombreCompleto');

  print('Length: ${nombreCompleto.length}');

  print('Contains F:  ${nombreCompleto.contains('F,1')}');

  print('EndsWith a:  ${nombreCompleto.endsWith('a')}');

  print('PadLeft: ${nombreCompleto.padLeft(20, '.')}');
  print('PadRigth: ${nombreCompleto.padRight(20, '.')}');

  print('Operador []: ${nombreCompleto[1]}');
  print('Operador *: ${nombreCompleto * 2}');
  print('Operador *: ${'*' * 10}');

  print('ReplaceAll: ${nombreCompleto.replaceAll(new RegExp(r'e'), 'a')}');

  print('subStirng: ${nombreCompleto.substring(0, 5)}...');
  print('indexOf: ${nombreCompleto.indexOf(' ')}...');

  print('Split: ${nombreCompleto.split(' ')}');
  print(
      'Capitalizar: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
