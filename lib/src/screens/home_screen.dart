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
      backgroundColor: Color(0xE6344955),
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('MCQ - Checker'),
        backgroundColor: Color(0xff232f34),
      ),
      body: createMainBody(),
    );
  }

  Widget createMainBody() {
    return SingleChildScrollView(
      child: Container(
        //color: Colors.grey,
        margin: EdgeInsets.all(16.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 16.0,
          runSpacing: 16.0,
          children: <Widget>[
            buildChip('Programming'),
            buildChip('Database'),
            buildChip('IS'),
            buildChip('AD'),
            buildChip('Programming'),
            buildChip('Database'),
            buildChip('IS'),
            buildChip('AD'),
            buildChip('Programming'),
            buildChip('Database'),
            buildChip('IS'),
            buildChip('AD'),
            buildChip('Programming'),
            buildChip('Database'),
            buildChip('IS'),
            buildChip('AD'),
            buildChip('Programming'),
            buildChip('Database'),
            buildChip('IS'),
            buildChip('AD'),
            buildChip('Programming'),
            buildChip('Database'),
            buildChip('IS'),
            buildChip('AD'),
            buildChip('Programming'),
            buildChip('Database'),
            buildChip('IS'),
            buildChip('AD'),
            buildChip('IS'),
            buildChip('AD'),
            buildChip('Programming'),
            buildChip('Database'),
            buildChip('IS'),
            // buildChip('AD'),
            addModule(true),
          ],
        ),
      ),
    );
  }

  Widget buildChip(String label) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      elevation: 10.0,
      labelPadding: EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
      backgroundColor: Color(0xff000000),
      labelStyle: TextStyle(fontSize: 16.0),
      deleteIconColor: Color(0xff344955),
      deleteIcon: Icon(
        Icons.cancel,
        color: Colors.white70,
      ),
      onDeleted: () {},
    );
  }

  Widget createInitialBody() {
    return Center(
      child: addModule(false),
    );
  }

  Widget addModule(bool isSmall) {
    return Container(
      height: isSmall ? 50.0 : 250.0,
      width: isSmall ? 50.0 : 250.0,
      decoration: BoxDecoration(
        color: Color(0xCC232f34),
        borderRadius: BorderRadius.circular(isSmall ? 25.0 : 125.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(isSmall ? 25.0 : 125.0),
          splashColor: Color(0xff344955),
          child: Icon(
            CupertinoIcons.add,
            size: isSmall ? 30.0 : 100.0,
            color: isSmall ? Colors.white70 : Colors.white30,
          ),
          onTap: () {
            _scaffoldKey.currentState
                .showBottomSheet((BuildContext context) => AddModule());
          },
        ),
      ),
    );
  }
}
