
import 'package:flutter/material.dart';

import 'screens/base_screen.dart';

class TeslaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 101,101,101)),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: BaseScreen(),
    );
  }
}
