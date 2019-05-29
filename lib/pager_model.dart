import 'package:flutter/material.dart';

class PagerModel {
  String _titly;
  String _descriptiony;
  String _imagey;
  IconData _icony;

  PagerModel(this._titly, this._descriptiony, this._imagey, this._icony);

  IconData get icony => _icony;

  String get imagey => _imagey;

  String get descriptiony => _descriptiony;

  String get titly => _titly;
}
