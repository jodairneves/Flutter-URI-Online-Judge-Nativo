import 'package:flutter/material.dart';

class Page2344 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments;
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 140.0,
                height: 140.0,
                child: Text('Resultado\n URI Online Judge 2344',
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
                child: Text('${arguments}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black54,
                    )),
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
      ),
    );
  }
}
