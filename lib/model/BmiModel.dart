import 'package:flutter/material.dart';

class BmiCalc extends ChangeNotifier{
  var _result;
  var _msg;

  double get BmiValue{
  return _result;
  }

  void calcBMI(double height,double weight ) {

    double h = height;
    double w = weight;
    // We dived height by 100 because we are taking the height in centimeter
    // and formula takes height in meter.
    var weight1 = w * 10000;
    var height1 = h * 30.48;
    double heightSquare = height1 * height1;
    _result = weight1 / heightSquare;
    // if (_result <= 18.5) {
    //   _msg = "you are Underweight";
    // } else if (_result >= 18.5 && _result <= 24.9) {
    //   _msg = "you are Normal";
    // } else if (_result >= 25 && _result <= 29.9) {
    //   _msg = "you are Overweight";
    // } else
    //   _msg = "Obesity";
    // print(_msg);
    notifyListeners();

  }
}

