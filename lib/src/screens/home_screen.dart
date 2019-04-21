import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ - Checker'),
      ),
      body: createBody(),
    );
  }

  Widget createBody() {
    return Center(
      child: Container(
        height: 250.0,
        width: 250.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(125.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(125.0),
            splashColor: Colors.blue[100],
            child: Icon(
              CupertinoIcons.add,
              size: 100.0,
              color: Colors.blue,
            ),
            onTap: () {
              print('Clicked');
            },
          ),
        ),
      ),
    );
  }
}
