import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Widget Framework",
      home: MyScaffold()
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sustitui Material por Scaffold 
    return Scaffold(
      // Utilize el argumento appBar con el Widget AppBar en lugar de mi custom MyAppBar
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Navigation menu",
          onPressed: null
        ),
        title: Text("Example title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null
          )
        ]
      ),
      // Sustituí el expand hijo de Material por el argumento body del Scaffold
      body: Center(
        // child: MyButton()
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("Testing with MyButton\n"),
            MyButton(),
            Counter()
          ]
        )
      ),
      // Agregue un action flotante
      floatingActionButton: FloatingActionButton(
        tooltip: "Add",
        child: Icon(Icons.add),
        onPressed: null
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("My button was tapped!");
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500]
        ),
        child: Center(
          child: Text("Engage")
        )
      )
    );
  }
}

// This works as the parent of the behavior of the counter
class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text("Count: $count");
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text("Increment")
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        CounterIncrementor(onPressed: _increment),
        CounterDisplay(count: _counter)
      ]
    );
  }
}