main() {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw 'Auxilio!, Exploto esto';
    }

    return 'Retorno del future';
  });

//manejo del error excepcion controlada
  timeout.then(print).catchError((error) => print(error));

  print('fin del main');
}
