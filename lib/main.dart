import 'package:firebase_test_app/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
          child: Scaffold(
            appBar: AppBar(
              title: Text(''),
            ),
            body: Consumer<MainModel>(
              builder: (context,model,child) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        model.vinoText,
                      ),
                      Text(
                        model.vinoText,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      RaisedButton(
                        child: Text(model.vinoText),
                        onPressed: (){
                          model.changeVinoText();
                        },
                      ),
                    ],
                  ),
                );
              }
            ),
            floatingActionButton: FloatingActionButton(
              onPressed:(){},
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ),
      ),
    );
  }
}