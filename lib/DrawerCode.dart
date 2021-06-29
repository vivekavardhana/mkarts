import 'dart:ui';
import 'package:flutter/material.dart';
import './OrdersPage2.dart';
import 'package:mkart/main.dart';
import 'package:avatars/avatars.dart';

class DrawerCode extends StatelessWidget {
  DrawerCode();

  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      return {
            Navigator.of(context).pop(false),
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrdersPage2(
                  username: "username",
                ),
              ),
            ),
          } ??
          false;
    }

    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: Avatar(
                        placeholderColors: [
                          Color(0xFFFFFFFF),
                        ],
                        backgroundColor: Colors.white,
                        shape: AvatarShape.circle(32),
                        name: "Fname" + ' ' + "Lname",
                        textStyle: TextStyle(color: Colors.blue, fontSize: 32),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Fname",
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Lname",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Color.fromRGBO(183, 247, 216, 2),
              child: ListTile(
                leading: Icon(
                  Icons.refresh,
                ),
                title: Text("Sync to App",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                onTap: () {
                  Navigator.pop(context);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrdersPage2(
                                username: username,
                              ),
                          settings:  RouteSettings(arguments: username),      
                              ));
                },
              ),
            ),
            Container(
              //color: Color.fromRGBO(183, 247, 216, 2),
              child: ListTile(
                leading: Icon(
                  Icons.arrow_back,
                ),
                title: Text("Sync to Server",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                onTap: () {
                  
                },
              ),
            ),
            Container(
              //color: Color.fromRGBO(183, 247, 216, 2),
              child: ListTile(
                leading: Icon(
                  Icons.notes_sharp,
                ),
                title: Text("Reset App Data",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                onTap: () {},
              ),
            ),
            Container(
              //color: Color.fromRGBO(183, 247, 216, 2),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: Text("Logout",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (BuildContext context) => MyHomePage()),
                      (Route<dynamic> route) => false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
