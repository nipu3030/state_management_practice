import 'package:flutter/material.dart';
class CounterProvider extends ChangeNotifier{

  int _count = 0;

  //get count
  int get getCount => _count;
  //events
  void incrementCount(){
    _count++;
    notifyListeners();
  }

  void decrementCount(){
    if(_count>0){
      _count--;
    }
    notifyListeners();
  }
}