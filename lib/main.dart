import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Widget Framework",
    home: MyScaffold()
  ));
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget> [
          // Refactorizar
          // Container(
          //   height: 56.0,
          //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //   decoration: BoxDecoration(color: Colors.blue[500]),
          //   child: Row(
          //     children: <Widget> [
          //       IconButton(
          //         icon: Icon(Icons.menu),
          //         tooltip: 'Navigation menu',
          //         onPressed: null // null disables the button
          //       ),
          //       Expanded(
          //         child: Text(
          //           "Example title",
          //           style: Theme.of(context).primaryTextTheme.title
          //         )
          //       ),
          //       IconButton(
          //         icon: Icon(Icons.search),
          //         tooltip: 'Search',
          //         onPressed: null
          //       )
          //     ]
          //   ),
          // ),
          MyAppBar(),
          Expanded(
            child: Center(
              child: Text("Hello World!")
            )
          )
        ]
      )
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget> [
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null // null disables the button
          ),
          Expanded(
            child: Text(
              "Some title",
              style: Theme.of(context).primaryTextTheme.title
            )
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null
          )
        ]
      )
    );
  }
}