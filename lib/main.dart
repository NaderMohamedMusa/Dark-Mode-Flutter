import 'package:darkmode/home_page.dart';
import 'package:darkmode/settings.dart';
import 'package:darkmode/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder:
          (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        return ChangeNotifierProvider<Settings>.value(
          value: Settings(snapshot.data),
          child: _MyApp(),
        );
      },
    );
  }
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<Settings>(context).isDarkMode
          ? setDarkTheme
          : setLightTheme,
      home: HomePage(),
    );
  }
}
