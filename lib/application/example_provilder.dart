import 'package:flutter/foundation.dart';

class ExampleProvider extends ChangeNotifier {
  late String _data;

  void setDataString(String data) {
    this._data = data;
  }

  String get getDataString => this._data;
  // String getDataString() {
  //   return this._data;
  // }
}
