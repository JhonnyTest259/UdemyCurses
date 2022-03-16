import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:paquetes/clases/reqres_respuesta.dart';
import 'package:paquetes/clases/Colombia/PaisRes.dart';

void getReqResp_service() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');

  http.get(url).then((res) {
    //print(res);
    /*    final body = jsonDecode(res.body);
    print(body);
    print('Page: ${body['page']}');
    print('per_page: ${body['per_page']}');
    print('id del tercer elemento : ${body['data'][2]['id']}'); */
    final resReqRes = reqResRespuestaFromJson(res.body);
    print('Page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id del tercer elemento : ${resReqRes.data[2].id}');
  });
}

void getPais() {
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');

  http.get(url).then((res) {
    //final body = jsonDecode(res.body);

    final resReqRes = paisResFromJson(res.body);

    print('${'=' * 20}');
    print('Pais: ${resReqRes.name}');
    print('Poblacion: ${resReqRes.population}');
    resReqRes.borders.forEach((front) => print('    $front'));
    print('Lenguajes: ${resReqRes.languages[0].nativeName}');
    print('Latitud: ${resReqRes.latlng[0]}');
    print('Longitud: ${resReqRes.latlng[1]}');
    print('Moneda: ${resReqRes.currencies[0].name}');
    print('Bandera: ${resReqRes.flag}');
    print('${'=' * 20}');
  }).catchError((error) => print(error));
}
