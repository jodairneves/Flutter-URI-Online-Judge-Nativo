import 'package:flutter/material.dart';

class Page1018 extends StatelessWidget {
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
              child: Text('Resultado\n URI Online Judge 1018',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: arguments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    '${arguments[index]}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black54,
                    ),
                  ),
                );
              },
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
