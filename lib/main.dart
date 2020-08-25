import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.access_alarm,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextWidgetOne(),
              TextWidgetTwo(),
              TextWidgetOne(),
              Image.network(
                  "https://i.pinimg.com/originals/f0/a6/4e/f0a64e32194d341befecc80458707565.jpg",
                  height: 300,
                  width: 400,
                  fit: BoxFit.cover),
              Image.asset("images/captain.jpg",
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover), //Kotlin မှာ cener Cross
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(child: ButtomWidget(), flex: 1),
                  Spacer(flex: 1), //Flexible Buttom
                  Expanded(child: ButtomWidget(), flex: 1),
                  Spacer(flex: 1), //Spacer          စပေ့တေွကို ြခားပေးတာ
                  Expanded(child: ButtomWidget(), flex: 1), //Expended Widget
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class TextWidgetOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World",
      style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }
}

class TextWidgetTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World",
      style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }
}

class ButtomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.green,
      child: Text("Buttom"),
    );
  }
}
