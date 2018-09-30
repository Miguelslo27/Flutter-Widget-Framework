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
        child: Text("Hello World!")
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
