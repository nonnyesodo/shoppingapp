import 'package:flutter/material.dart';
import 'ui/cloth_detail.dart';
import 'ui/welcome.dart';

void main() {
  runApp(MaterialApp(title: 'shoppingapp', initialRoute: '/', routes: {
    '/': (context) => Welcome(),
    '/detail': (context) => Clothe_d(
          itemname: '',
          image: '',
          price: '',
        ),
  }));
}
