import 'package:flutter/material.dart';
import 'package:prov/model/BmiModel.dart';
import 'package:provider/provider.dart';

class Bmi extends StatelessWidget {
  final height = TextEditingController();
  final weight = TextEditingController();
  var result = 0.0;
  var msg = "";
  final String title;
  Bmi({this.title});

  void _calculator(BuildContext context) {
    Provider.of<BmiCalc>(context, listen: false).calcBMI(double.parse(height.text), double.parse(weight.text));
  }

  var _value = 1.0;


  //double _cal;// new variable defined for result


  @override
  Widget build(BuildContext context) {
    var counter1 = Provider.of<BmiCalc>(context).BmiValue;
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[350],
        child: Column(
          children: [
            Container(
              // color: Colors.lime,
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your height in feet....',
                  //onChanged: (text) {
                  //  print("First text field: $text");
                  //  },
                  //  controller: myController,
                ),
                controller: height,
              ),
              alignment: Alignment.center,
            ),
            Container(
              // color: Colors.lime,
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your weight....',
                  //onChanged: (text) {
                  //  print("First text field: $text");
                  //  },
                  //  controller: myController,
                ),
                controller: weight,
              ),
              alignment: Alignment.center,
            ),
            RaisedButton(
              onPressed: ()=> _calculator(context),
              child: Text("CALCULATE"),
              color: Colors.blue[400],
            ),
            SizedBox(height: 25),
            Text(
              "Your BMI: $counter1",
            ),
            // Text("$msg"),
          ],
        ),
      ),
    );
  }
}
