import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'quizPage.dart';
import 'storeResult.dart';
import 'menu.dart';

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
        title: 'Quiz Esiee',
        theme: new ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.blueAccent,
          fontFamily: 'Comfortaa',
        ),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => new Menu(),
        },
      ),
    );
  }
}
