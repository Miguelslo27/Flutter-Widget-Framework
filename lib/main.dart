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
    // return Material(
    //   child: Column(
    //     children: <Widget> [
    //       MyAppBar(
    //         title: "Title for navbar"
    //       ),
    //       Expanded(
    //         child: Center(
    //           child: Text("Hello World!")
    //         )
    //       )
    //     ]
    //   )
    // );
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

// class MyAppBar extends StatelessWidget {
//   MyAppBar({@required this.title});

//   final String title;
  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56.0,
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(color: Colors.blue[500]),
//       child: Row(
//         children: <Widget> [
//           IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null // null disables the button
//           ),
//           Expanded(
//             child: Text(
//               title,
//               style: Theme.of(context).primaryTextTheme.title
//             )
//           ),
//           IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null
//           )
//         ]
//       )
//     );
//   }
// }