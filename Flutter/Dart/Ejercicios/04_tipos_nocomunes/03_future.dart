main() {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos depsues');
    return 'Retorno del future';
  });

//retorno del future
  //timeout.then((texto) => print(texto));
  timeout.then(print);

  print('fin del main');
}
