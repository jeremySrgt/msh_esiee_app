import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'homePage.dart';
import 'storeResult.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiProvider(
      providers: [
        //Provider(create: (context) => HomePage(),),
        ChangeNotifierProvider(
          create: (context) => StoreResult(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quizz Esiee',
        theme: new ThemeData(
          primaryColor: Colors.green,
          accentColor: Colors.greenAccent,
          fontFamily: 'Comfortaa',
        ),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => new HomePage(),
        },
      ),
    );
  }
}