import 'package:flutter/material.dart';
import 'package:flutter_web_example/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Titulo de la aplicacion en el menu de apps en el telefono
      title: 'Flutter Weather',

      //pagina inicial que se vera al iniciar la aplicacion
      initialRoute: 'first', 

      //Rutas que compondran toda la app
      routes: {
        'first' : (BuildContext context) => HomePage(),
      },

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}