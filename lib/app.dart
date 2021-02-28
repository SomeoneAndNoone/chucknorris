import 'package:chucknorris/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import 'common/constants/general_constants.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: GeneralConstants.APP_TITLE,
      home: HomePage(),
    );
  }
}
