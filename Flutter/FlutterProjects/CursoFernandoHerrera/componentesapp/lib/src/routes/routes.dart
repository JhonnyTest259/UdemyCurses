import 'package:componentesapp/src/pages/listview_page.dart';
import 'package:componentesapp/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'package:componentesapp/src/pages/animate_container_page.dart';
import 'package:componentesapp/src/pages/input_page.dart';
import 'package:componentesapp/src/pages/card_page.dart';
import 'package:componentesapp/src/pages/alert_page.dart';
import 'package:componentesapp/src/pages/avatar_page.dart';
import 'package:componentesapp/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  };
}
