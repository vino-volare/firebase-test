import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String vinoText = 'aaaaa';
  void changeVinoText(){
    vinoText = 'ビーノさんかわいい';
    notifyListeners();
  }
}