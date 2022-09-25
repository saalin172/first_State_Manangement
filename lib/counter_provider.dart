import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  int _count = 0;

  int get counter => _count;

  increment(){
    _count ++;
    notifyListeners();
  }

  decrement(){
    if(_count > 0){
      _count --;
    }
    
    notifyListeners();
  }

}