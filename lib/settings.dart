import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              _isAdded = !_isAdded;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 350),
            curve: Curves.linear,
            decoration: BoxDecoration(
              color: _isAdded ? Colors.transparent : Colors.green,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3.0, color: Colors.green),
            ),
            width: _isAdded ? 160 : 60,
            height: 60,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeIn,
                      opacity: _isAdded ? 0.0 : 1.0,
                      child: Icon(Icons.person_add, color: Colors.white)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 550),
                    opacity: _isAdded ? 1.0 : 0.0,
                    child: Text(
                      "MESSAGE",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
