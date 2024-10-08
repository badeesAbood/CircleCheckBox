import 'package:circle_check/redev_checkbox.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Circle CheckBox'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleCheckbox(
              value: (0 != 0),
              onChanged: (value) => null,
            ) ,
            CircleCheckbox(
              value: (0 == 0),
              onChanged: (value) => null,
            ),
            SizedBox(height: MediaQuery.of(context).padding.top,),
            //
            CircleCheckboxListTile(
              title: const Text('Animate Slowly'),
              value: (0 == 0),
              onChanged: (value) => null,
              secondary: const Icon(Icons.hourglass_empty),
            ),
            CircleCheckboxListTile(
              title: const Text('Animate Slowly'),
              value: (0 != 0),
              onChanged: (value) => null,
              secondary: const Icon(Icons.hourglass_empty),
            )
          ],
        ),
      ),
    );
  }
}
