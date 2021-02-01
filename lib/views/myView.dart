import 'package:flutter/material.dart';
import 'package:prov/main.dart';
import 'package:prov/model/data.dart';
import 'package:provider/provider.dart';

class MyView extends StatelessWidget {
  final String title;

  MyView({this.title});

  void _incrementCounter(BuildContext context) {
    Provider.of<Count>(context, listen: false).incrementCounter();
  }
  void _decrementCounter(BuildContext context){
    Provider.of<Count>(context,listen: false).decrementCounter();
  }

  @override
  Widget build(BuildContext context) {

    var counter = Provider.of<Count>(context).count;
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("PROVIDER"),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(padding: const EdgeInsets.only(left: 145,top: 20),
              child: Row(children:[ RaisedButton(onPressed: ()=>_incrementCounter(context),child: Text('Add')),
                RaisedButton(onPressed: ()=>_decrementCounter(context),child: Text('Sub')),
              ]),
            )
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _incrementCounter(context),
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,// This trailing comma
    );
  }
}
