import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mcq_checker/src/blocs/module_bloc.dart';
import 'package:mcq_checker/src/models/module.dart';
import 'package:mcq_checker/src/resources/db_provider.dart';
import 'package:mcq_checker/src/widgets/add_module_bottom_sheet.dart';
import 'package:mcq_checker/src/widgets/module_list_tile.dart';

class HomeScreen extends StatelessWidget {
  final ModuleBloc bloc;

  HomeScreen({this.bloc});

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
      body: createInitialBody(),
    );
  }

  Widget buildBody() {
    return StreamBuilder(
      stream: bloc.modules,
      builder: (BuildContext context, AsyncSnapshot<List<Module>> snapshot) {
        if (!snapshot.hasData) {
          return createInitialBody();
        }

        return ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, int index) {
            return ModuleListTile(module: snapshot.data[index]);
          },
        );
      },
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
      height: isSmall ? 80.0 : 250.0,
      width: isSmall ? 80.0 : 250.0,
      decoration: BoxDecoration(
        color: isSmall ? Colors.green[400] : Color(0xCC232f34),
        borderRadius: BorderRadius.circular(isSmall ? 40.0 : 125.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(isSmall ? 40.0 : 125.0),
          splashColor: Color(0xff344955),
          child: Icon(
            CupertinoIcons.add,
            size: isSmall ? 50.0 : 100.0,
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

  void callThis() async {
    bloc.addModule(Module('', 1, 1, 'group', 'marker', [], []));
  }
}
