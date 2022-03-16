void main() {
  double numero = 3.1416;

  double infinite = double.infinity;

  print('Firma: ${numero.sign} :: $numero');

  print('isFinite: ${infinite.isFinite} :: $infinite');

  print('abs: ${numero.abs()} :: $numero');
  print('ceil: ${numero.ceil()} :: $numero');

  print('ceilToDouble: ${numero.ceilToDouble()} :: $numero');

  print('round: ${numero.round()} :: $numero');
  print('roundToDouble: ${numero.roundToDouble()} :: $numero');

  print('clamp: ${numero.clamp(1, 3)} :: $numero');
}
