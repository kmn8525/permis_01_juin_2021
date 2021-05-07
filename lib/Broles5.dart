import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter AlertDialog'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('Ouvrir une AlertDialog'),
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Information'),
                          content: Text("Ceci est un message d'AlertDialog"),
                          actions: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Fermer'))
                          ],
                        );
                      });
                }),
            RaisedButton(
                child: Text('Ouvrir une CupertinoAlertDialog'),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return CupertinoAlertDialog(
                          title: Text('Information'),
                          content: Text(
                              "Ceci est un message de CupertinoAlertDialog"),
                          actions: <Widget>[
                            CupertinoDialogAction(
                              child: Text('Fermer'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      });
                }),
          ],
        ),
      ),
    );
  }
}
