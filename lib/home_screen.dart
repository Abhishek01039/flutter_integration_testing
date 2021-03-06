import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:integration_test/extension/string_extension.dart';
import 'package:integration_test/second_screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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
  int _counter = 0;
  double value = 123.234322343243242432;
  String str = "krishna yadav";
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        title: Text(
          widget.title,
          key: Key("app_title"),
        ),
        actions: [
          IconButton(
            key: Key("navigation_button"),
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SecondPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          key: Key("column"),
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
              CounterExptension(_counter).addOne().toString(),
              key: Key("counter"),
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Double value should have only two decimal though extension',
              ),
            ),
            Text(
              Decimal(value).keepTwoDigitDecimal().toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              FirstLetterUpper(str).toMehod().toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key("increment"),
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   children: [
//                     FlatButton(
//                       onPressed: () {},
//                       child: Text("Button"),
//                     ),
//                     FlatButton(
//                       onPressed: () {},
//                       child: Text("Button"),
//                     ),
//                     FlatButton(
//                       onPressed: () {},
//                       child: Text("Button"),
//                     ),
//                     FlatButton(
//                       onPressed: () {},
//                       child: Text("Button"),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: 300,
//                   child: ListView.builder(
//                       itemCount: 10,
//                       // physics: NeverScrollableScrollPhysics(),
//                       shrinkWrap: true,
//                       itemBuilder: (context, index) {
//                         return Container(
//                           // height: 100,
//                           child: Card(
//                             child: Text(
//                               index.toString(),
//                             ),
//                           ),
//                         );
//                       }),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               FlatButton(
//                 onPressed: () {},
//                 child: Text("Button"),
//               ),
//               FlatButton(
//                 onPressed: () {},
//                 child: Text("Button"),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
