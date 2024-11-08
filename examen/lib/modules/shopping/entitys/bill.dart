import 'package:cloud_firestore/cloud_firestore.dart';

class Bill {
  final String _name;
  final String _description;
  final double _price;
  final List<String> _image;

  Bill(this._name, this._description, this._price, this._image);

  String get name => _name;
  String get description => _description;
  double get price => _price;
  List<String> get image => _image;
}
