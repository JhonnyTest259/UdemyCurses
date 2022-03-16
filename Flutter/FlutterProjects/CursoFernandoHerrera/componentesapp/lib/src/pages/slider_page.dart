import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sliders'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(
                child: _crearImagen(),
              ),
            ],
          ),
        ));
  }

  _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      min: 10.0,
      max: 400.0,
      value: _valorSlider,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  _crearImagen() {
    return FadeInImage(
      image: NetworkImage(
          'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2022/01/batman-2596985.jpg?itok=QmEaP8OT'),
      width: _valorSlider,
      fit: BoxFit.contain,
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
    );
  }

  _crearCheckBox() {
/*     return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          print(valor);
          _bloquearCheck = valor!;
        });
      },
    ); */
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          print(valor);
          _bloquearCheck = valor!;
        });
      },
    );
  }

  _crearSwitch() {
    return SwitchListTile(
      title: Text('switche'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          print(valor);
          _bloquearCheck = valor;
        });
      },
    );
  }
}
