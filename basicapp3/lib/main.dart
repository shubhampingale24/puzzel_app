import 'package:flutter/material.dart';

void main() => runApp(Counter());

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CounterState();
  }
}

class CounterState extends State<Counter> {
  var count = 0;

  void setCount() {
    setState(() {
      count = count + 1;
    });
  }

  Widget build(BuildContext Context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("COUNTER"),
        ),
        body: Column(
          children: [
            Text("Count is : $count"),
            ElevatedButton(
              child: Text("Click Here"),
              onPressed: setCount,
            ),
          ],
        ),
      ),
    );
  }
}
