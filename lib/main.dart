import 'package:flutter/material.dart';
import 'package:wheel_spinner_tut/spinner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(
          title: 'WheelSpinner',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            WheelSpinner(
              value: _counter.toDouble(),
              min: 0.0,
              max: 100.0,
              onSlideUpdate: (val) => setState(() {
                    _counter = val;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(_counter.toStringAsFixed(2), textScaleFactor: 2.0,),
            ),
          ],
        ),
      ),
    );
  }
}
