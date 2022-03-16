import 'dart:async';

void main() {
  final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen(
    (data) => print('Despegando!! $data'),
    onError: (err) => print('Error! $err'),
    onDone: () => print('Misión completa'),
    cancelOnError: false,
  );

  streamController.stream.listen(
    (data) => print('Despegando Stream2!! $data'),
    onError: (err) => print('Error!  Stream2 $err'),
    onDone: () => print('Misión completa Stream2'),
    cancelOnError: false,
  );

  streamController.sink.add('Apolo 11');
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');
  streamController.sink.addError('Houston, tenemos un problema');
  streamController.sink.add('Apolo 14');
  streamController.sink.add('Apolo 16');

  streamController.sink.close();
  print('Fin del main');
}
