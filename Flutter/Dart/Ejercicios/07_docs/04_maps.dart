void main(List<String> args) {
  final persona = {
    'nombre': 'jhonatan',
    'apellido': 'Mejia',
    'edad': 23,
  };

  final direccion = {
    'ciudad': 'Villamaria',
    'pais': 'Colombia',
  };

  print('Persona: $persona');
  print('Length: ${persona.length}');
  print('keys: ${persona.keys}');
  print('Values: ${persona.values}');

  persona.addAll(direccion);
  print('AddAll: $persona');

  persona.remove('pais');
  print('remove: $persona');

  //persona.removeWhere((key, value) => (key != 'nombre') ? true : false);

  print('removeWhere: $persona');

  persona.forEach((key, value) {
    print('key: $key  value: $value');
  });

  final nuevoMapa = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('persona map:  $nuevoMapa');
}
