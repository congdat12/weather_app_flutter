import 'package:flutter/material.dart';

class ListviewHomeModel{
  String? img;
  String? namePlace;
  String? temp;
  ListviewHomeModel();
}
List<ListviewHomeModel> listviewHomeModel = [
  ListviewHomeModel()..img = 'assets/images/jaipur.png'
  ..namePlace = 'Jaipur'
  ..temp = '30°C',
  ListviewHomeModel()..img = 'assets/images/chennai.png'
  ..namePlace = 'Chennai'
  ..temp = '22°C',
];