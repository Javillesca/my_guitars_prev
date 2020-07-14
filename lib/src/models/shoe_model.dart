import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier {
  String _assetImg = 'assets/imgs/espltdblack.png';
  double _size = 40;
  String _title = 'ESP LTD MH-10, Black';
  String _detail = 'La ESP LTD MH-10 en negro es una guitarra de metal y rock de gran valor para los aspirantes a músicos que buscan un instrumento fácil de tocar y con un gran sonido. El mástil tiene 24 trastes extra-jumbo y un radio plano de 350mm para un control y una jugabilidad óptimos left hand. El mástil está montado en un cuerpo de madera de tilo bien equilibrado con contornos cómodos y un elegante doble cutaway que permite un fácil acceso a los trastes superiores para un solo de alto octanaje. El diseño de cuerpo de cuerdas proporciona una transferencia de vibración de cuerdas estable tuning y máxima, mientras que los humbuckers de doble diseño con ESP son unidades versátiles capaces de reproducir cualquier género de música que usted elija. Si está buscando una introducción de gran valor a la guitarra con un instrumento que no detenga su ejecución, la MH-10 es una guitarra versátil lista para tomar cualquier cosa que usted pueda darle.';
  double _price = 224.50;

  String get assetImg => this._assetImg;
  set assetImg(String value) {
    this._assetImg = value;
    notifyListeners();
  }

  double get size => this._size;
  set size(double value) {
    this._size = value;
    notifyListeners();
  }

  String get title => this._title;
  set title(String value) {
    this._title = value;
    notifyListeners();
  }

  String get detail => this._detail;
  set detail(String value) {
    this._detail = value;
    notifyListeners();
  }

  double get price => this._price;
  set price(double value) {
    this._price = value;
    notifyListeners();
  }

}


