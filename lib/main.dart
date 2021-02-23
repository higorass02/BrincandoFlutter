//import 'dart:html';

/// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

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
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
              left: BorderSide(width: 1.0, color: Colors.grey),
              right: BorderSide(width: 1.0, color: Colors.grey),
              bottom: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          margin: const EdgeInsets.all(10.0),
          //color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.2,
                color: Color.fromRGBO(0,139,139, 1),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text('Unimed Volta Redonda',style: TextStyle(fontSize: 20)),
                    Text('Área do Colaborador',style: TextStyle(fontSize: 20)),
                    Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Login',
                              //helperText: 'Login',
                              icon: Icon(Icons.security),
                              border: OutlineInputBorder(),
                              //errorText: 'Login Incorreto!'
                              // prefix: Text('Prefix'),
                              // suffix: Text('Suffix'),

                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Entre com seu Login!';
                              }
                              return null;
                            },
                            textAlign: TextAlign.center,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Senha',
                              //helperText: 'Senha',
                              icon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                              //errorText: 'Senha Incorreto!'
                              // prefix: Text('Prefix'),
                              // suffix: Text('Suffix'),

                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Entre com seu Login!';
                              }
                              return null;
                            },
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}