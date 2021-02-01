import 'package:flutter/cupertino.dart';

class Count extends ChangeNotifier{
  int _count=0;
  int get count => _count;
  void incrementCounter(){
    _count++;
    notifyListeners();
  }
  void decrementCounter(){
    _count--;
    notifyListeners();
  }
}