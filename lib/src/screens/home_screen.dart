import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mcq_checker/src/widgets/add_module_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
              _scaffoldKey.currentState
                  .showBottomSheet((BuildContext context) => AddModule());
            },
          ),
        ),
      ),
    );
  }
}
