import 'package:flutter/material.dart';

class UsersFragmentWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
              "Users"
          ),
        ],
      ),
    );
  }
}
