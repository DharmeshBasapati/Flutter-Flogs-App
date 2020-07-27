import 'package:flutter/material.dart';
import 'package:flutter_flogs_app/login_page.dart';
import 'package:flutter_flogs_app/theme_settings.dart';
import 'package:flutter_flogs_app/themes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder:
          (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        return ChangeNotifierProvider<ThemeSettings>.value(
          value: ThemeSettings(snapshot.data),
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
      title: 'Flutter Flogs',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeSettings>(context).isDarkMode
          ? setDarkTheme
          : setLightTheme,
      home: LoginPage(),
    );
  }
}
