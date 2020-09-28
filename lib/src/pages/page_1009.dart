import 'dart:ffi';

import 'package:flutter/material.dart';

class Page1009 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<dynamic> arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'URI Online Judge',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 140.0,
              height: 100.0,
              child: Text('Resultado\n URI Online Judge 1009',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
            child: Container(
              width: 140.0,
              height: 140.0,
              child: Text(
                'Nome: ${arguments[0]}\n R\$ ${arguments[1]}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 50.0,
              child: RaisedButton(
                child: Text(
                  'Voltar',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
