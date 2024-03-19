import 'package:flutter/material.dart';
import 'package:sample/home.dart';
import 'package:sample/login.dart';
import 'package:flutter/services.dart';

void main() {
  runApp (
    Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
      },
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
        'home': (context) => MyHome()
      },
    ),
  ));
}
