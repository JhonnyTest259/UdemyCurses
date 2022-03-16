import 'dart:io';

main() {
  File file = new File(Directory.current.path + '\\assets\\personas.txt');

  Future<String> f = file.readAsString();

  ///Asi lo lee de forma sincronica
  ///String f = file.readAsStringSync();
  ///print(f);
  //f.then((data) => print(data));

  f.then(print);

  print('Fin del main');
}
