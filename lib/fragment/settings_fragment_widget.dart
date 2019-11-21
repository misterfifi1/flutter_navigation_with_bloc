import 'package:flutter/material.dart';

class SettingsFragmentWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
              "Settings"
          ),
        ],
      ),
    );
  }
}
