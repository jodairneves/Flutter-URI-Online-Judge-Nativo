import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  final Home home;

  Home({this.home});

  @override
  _HomeState createState() => _HomeState();
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const platform = const MethodChannel('evento');
  dynamic _result;

  Future _getResult(String str) async {
    try {
      if (str == '1001') {
        _result = await platform.invokeMethod(str);
        Navigator.pushNamed(context, 'page_1001', arguments: _result);
      } else if (str == '1009') {
        List<dynamic> lista = await platform.invokeMethod(str);
        Navigator.pushNamed(context, 'page_1009', arguments: lista);
      } else if (str == '1018') {
        List<dynamic> lista = await platform.invokeMethod(str);
        Navigator.pushNamed(context, 'page_1018', arguments: lista);
      } else if (str == '2344') {
        _result = await platform.invokeMethod(str);
        Navigator.pushNamed(context, 'page_2344', arguments: _result);
      } else if (str == '3040') {
        _result = await platform.invokeMethod(str);
        Navigator.pushNamed(context, 'page_3040', arguments: _result);
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
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
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 40.0),
              child: Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/icon.png"),
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
                    'Atividade 1001',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    _getResult('1001');
                  },
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    'Atividade 1009',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    _getResult('1009');
                  },
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    'Atividade 1018',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    _getResult('1018');
                  },
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    'Atividade 2344',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    _getResult('2344');
                  },
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    'Atividade 3040',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    _getResult('3040');
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
