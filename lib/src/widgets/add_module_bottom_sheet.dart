import 'package:flutter/material.dart';

class AddModule extends StatelessWidget {
  //
  //

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        color: Color(0xff232f34),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          textField('Module', 'Programming'),
          SizedBox(height: 16.0),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: textField('Year', '1st'),
                width: 100.0,
              ),
              // SizedBox(width: 16.0),
              Container(
                child: textField('Sem', '1st'),
                width: 100.0,
              ),
              // SizedBox(width: 16.0),
              Container(
                child: textField('Group', 'L1C2'),
                width: 150.0,
              ),
            ],
          ),
          SizedBox(height: 16.0),
          textField('Marker', 'Pankaj Koirala'),
          SizedBox(height: 16.0),
          btnAttachAnswer(),
          btnAdd(),
        ],
      ),
    );
  }

  Widget textField(String lable, String placeHolder) {
    return TextField(
      // User typed text stype
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.white70,
        //fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        // Label style
        labelText: lable,
        labelStyle: TextStyle(
          letterSpacing: 6.0,
          fontSize: 18.0,
          color: Colors.white,
        ),

        // Hint Style
        hintText: placeHolder,
        hintStyle: TextStyle(
          color: Colors.white54,
        ),

        // Text Style
        contentPadding: EdgeInsets.only(left: 16.0, top: 35.0, right: 16.0),

        // Normal border Style
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.grey,
          ),
        ),

        // Focused Border Style
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget btnAttachAnswer() {
    return InkWell(
      onTap: () {
        print('Clicked scann answer btn');
      },
      child: Container(
        height: 60.0,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          'Scan Correct Answers'.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget btnAdd() {
    return InkWell(
      onTap: () {
        print('Add Module');
      },
      child: Container(
        height: 60.0,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          'Add Module'.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
