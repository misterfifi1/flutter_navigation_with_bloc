import 'package:flutter/material.dart';

class AppsFragmentWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
              "Apps"
          ),
        ],
      ),
    );
  }
}
