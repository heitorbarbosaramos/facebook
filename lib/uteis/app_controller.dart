import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier{

  static AppController instance = AppController();

  bool isDartTheme = false;

  alteraLightDartTema(){
    isDartTheme = !isDartTheme;
    notifyListeners();
  }

}