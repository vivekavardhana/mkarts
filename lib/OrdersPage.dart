import 'package:flutter/material.dart';
import 'DrawerCode.dart';

class OrdersPage extends StatefulWidget {
  OrdersPage({this.username = ""});
  final String username;

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO"),
              ),
              SizedBox(height: 16),
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Text("YES"),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    //final String uname = ModalRoute.of(context).settings.arguments as String;
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Orders"),
            actions: [
              IconButton(
                icon: Icon(Icons.circle, 
                color: Colors.green,
                ),
                onPressed: (){},
                )
            ],
          ),
          drawer: DrawerCode( ),
          
          body: Column(
            children: [
              Expanded(
                child: Center(
                    child: Text(
                        "Click \"Sync to App\" from menu to list the orders ")),
                    
              ),
            ],
          ),
        ));
  }
}
