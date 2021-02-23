//import 'dart:html';

/// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

// void openPage(BuildContext context) {
//   Navigator.push(context, MaterialPageRoute(
//     builder: (BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Next page'),
//         ),
//         body: Center(
//           child: Text( 'This is the next page', style: TextStyle(fontSize: 24),
//           ),
//         ),
//       );
//     },
//   ));
// }

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Ola mundo'),
        actions: <Widget>[
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Color.fromRGBO(0,139,139, 1),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}