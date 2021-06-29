import 'dart:io';
import 'package:flutter/material.dart';
import 'OrdersPage.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'CustomerDetails.dart';

String username = 'test';
String password = 'password';
 

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(CustomerDetailsAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mkart',
      theme: ThemeData(
          primarySwatch: const MaterialColor(
        0xFFFFFFFF,
        const <int, Color>{
          50: const Color(0xFFFFFFFF),
          100: const Color(0xFFFFFFFF),
          200: const Color(0xFFFFFFFF),
          300: const Color(0xFFFFFFFF),
          400: const Color(0xFFFFFFFF),
          500: const Color(0xFFFFFFFF),
          600: const Color(0xFFFFFFFF),
          700: const Color(0xFFFFFFFF),
          800: const Color(0xFFFFFFFF),
          900: const Color(0xFFFFFFFF),
        },
      ) //Colors.lightGreen,
          ),
      home: MyHomePage(title: 'Mkart'),
      routes: <String, WidgetBuilder>{
        './pages/OrdersPage.dart': (BuildContext context) => new OrdersPage(
              username: username,
            ),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  String msg = '';

  bool _validateuser = false, _validatepassword = false;
  bool _showPassword = false;

  @override
  void dispose() {
    //_username.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, 
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Image.asset("assets/icons/skart.jpeg",
                    width: 150, height: 150),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: TextField(
                  
                  controller: _username,
                  decoration: InputDecoration(
                    focusedBorder: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                   // labelText: 'Username',
                    
                    hintText: "Username",
                    errorText:
                        _validateuser ? 'Username must not be empty' : null,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: TextField(
                  controller: _password,
                  obscureText: !this._showPassword,
                  decoration: InputDecoration(
                    hintText: 'password',
                    focusedBorder: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                    errorText:
                        _validatepassword ? 'Password must not be empty' : null,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: this._showPassword ? Colors.green : Colors.grey,
                      ),
                      onPressed: () {
                        setState(
                            () => this._showPassword = !this._showPassword);
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                child: Container(
                  
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    child: Text("Login",
                        style: TextStyle(fontSize: 22, color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(12)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ))),
                    onPressed: () {
                      setState(() {
                        _username.text.isEmpty
                            ? _validateuser = true
                            : _validateuser = false;
                        _password.text.isEmpty
                            ? _validatepassword = true
                            : _validatepassword = false;
                        
                      });
                      if (!_validateuser && !_validatepassword) {
                        
                        if ((username == _username.text) &&
                            (password == _password.text)) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => OrdersPage(
                                        username: "username",
                                      ),
                                  settings:   RouteSettings(arguments: username),  
                                      ),
                              (Route<dynamic> route) => false);
                        } else {
                          setState(() {
                            msg =
                                "Username & Password combination is not valid, Please try again";
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(msg),
                            duration: Duration(seconds: 8),
                            elevation: 50,
                          ));
                        }
                      }
                    },
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
