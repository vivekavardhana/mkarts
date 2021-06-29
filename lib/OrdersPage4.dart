import 'package:flutter/material.dart';
import 'OrderCheckListComments.dart';
import 'OrderCheckListAttachments.dart';

List<String> questions = [
  "If the house has a basement or below grade rooms, will the foundation be waterproofed in lieu of the standard asphalitic dampproofing ?",
  "Does your quotation include a programmable thermostat ?",
  "What is the length of the roofing material warrenty ?",
  "Will you install all products and materials according to the manufacturer\'s specification"
];
String orderno4, orderamount4;

class OrdersPage4 extends StatefulWidget {
  OrdersPage4(String orderno, String orderamount) {
    orderno4 = orderno;
    orderamount4 = orderamount;
  }

  @override
  _OrdersPage4State createState() => _OrdersPage4State();
}

class _OrdersPage4State extends State<OrdersPage4> {
  var colorindicator =
      List.generate(5, (i) => [0, 0, 0, 0, 0], growable: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Checklist"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                            child: Text(
                          questions[0],
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          softWrap: true,
                          maxLines: 5,
                        )),
                      ],
                    ),
                  ),
                  //Flexible(child: customListTile()),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[0][0] == 1)
                                colorindicator[0][0] = 0;
                              else
                                colorindicator[0][0] = 1;
                            });
                          },
                          child: Icon(Icons.check,
                              color: (colorindicator[0][0] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[0][0] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[0][1] == 1)
                                colorindicator[0][1] = 0;
                              else
                                colorindicator[0][1] = 1;
                            });
                          },
                          child: Icon(Icons.close, color: (colorindicator[0][1] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[0][1] == 0)
                                ? Colors.red
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[0][2] == 1)
                                colorindicator[0][2] = 0;
                              else
                                colorindicator[0][2] = 1;
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            color: (colorindicator[0][2] == 0)
                                ? Colors.white
                                : Colors.green,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[0][2] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.red,
                            //onSurface: Colors.red,// <-- Splash color
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[0][3] == 1)
                                colorindicator[0][3] = 0;
                              else
                                colorindicator[0][3] = 1;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      OrderCheckListAttachments(
                                          orderno4, orderamount4, questions[0]),
                                ));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      OrderCheckListAttachments(
                                          orderno4, orderamount4, questions[0]),
                                ));
                          },
                          child: Icon(Icons.camera_alt_rounded,
                              color: (colorindicator[0][3] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[0][3] == 0)
                                ? Colors.green
                                : Colors.white,
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          child: Icon(Icons.message,
                              color: (colorindicator[0][4] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[0][4] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                          onPressed: () {
                            setState(() {
                              if (colorindicator[0][4] == 1)
                                colorindicator[0][4] = 0;
                              else
                                colorindicator[0][4] = 1;
                            });
                            //OrderCheckListComments
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderCheckListComments(
                                      orderno4, orderamount4, questions[0]),
                                ));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            questions[1],
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            softWrap: true,
                            maxLines: 5,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[1][0] == 1)
                                colorindicator[1][0] = 0;
                              else
                                colorindicator[1][0] = 1;
                            });
                          },
                          child: Icon(Icons.check,
                              color: (colorindicator[1][0] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[1][0] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[1][1] == 1)
                                colorindicator[1][1] = 0;
                              else
                                colorindicator[1][1] = 1;
                            });
                          },
                          child: Icon(Icons.close, color: (colorindicator[1][1] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[1][1] == 0)
                                ? Colors.red
                                : Colors.green, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[1][2] == 1)
                                colorindicator[1][2] = 0;
                              else
                                colorindicator[1][2] = 1;
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            color: (colorindicator[1][2] == 0)
                                ? Colors.white
                                : Colors.green,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[1][2] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.red,
                            //onSurface: Colors.red,// <-- Splash color
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[1][3] == 1)
                                colorindicator[1][3] = 0;
                              else
                                colorindicator[1][3] = 1;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      OrderCheckListAttachments(
                                          orderno4, orderamount4, questions[1]),
                                ));
                          },
                          child: Icon(Icons.camera_alt_rounded,
                              color: (colorindicator[1][3] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[1][3] == 0)
                                ? Colors.green
                                : Colors.white,
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          child: Icon(Icons.message,
                              color: (colorindicator[1][4] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[1][4] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                          onPressed: () {
                            setState(() {
                              if (colorindicator[1][4] == 1)
                                colorindicator[1][4] = 0;
                              else
                                colorindicator[1][4] = 1;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderCheckListComments(
                                      orderno4, orderamount4, questions[1]),
                                ));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                            child: Text(
                          questions[2],
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          softWrap: true,
                          maxLines: 5,
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[2][0] == 1)
                                colorindicator[2][0] = 0;
                              else
                                colorindicator[2][0] = 1;
                            });
                          },
                          child: Icon(Icons.check,
                              color: (colorindicator[2][0] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[2][0] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[2][1] == 1)
                                colorindicator[2][1] = 0;
                              else
                                colorindicator[2][1] = 1;
                            });
                          },
                          child: Icon(Icons.close, color: (colorindicator[2][1] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[2][1] == 0)
                                ? Colors.red
                                : Colors.green, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[2][2] == 1)
                                colorindicator[2][2] = 0;
                              else
                                colorindicator[2][2] = 1;
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            color: (colorindicator[2][2] == 0)
                                ? Colors.white
                                : Colors.green,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[2][2] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.red,
                            //onSurface: Colors.red,// <-- Splash color
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[2][3] == 1)
                                colorindicator[2][3] = 0;
                              else
                                colorindicator[2][3] = 1;
                            });
                          },
                          child: Icon(Icons.camera_alt_rounded,
                              color: (colorindicator[2][3] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[2][3] == 0)
                                ? Colors.green
                                : Colors.white,
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          child: Icon(Icons.message,
                              color: (colorindicator[2][4] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[2][4] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                          onPressed: () {
                            setState(() {
                              if (colorindicator[2][4] == 1)
                                colorindicator[2][4] = 0;
                              else
                                colorindicator[2][4] = 1;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderCheckListComments(
                                      orderno4, orderamount4, questions[2]),
                                ));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                            child: Text(
                          questions[3],
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          softWrap: true,
                          maxLines: 5,
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[3][0] == 1)
                                colorindicator[3][0] = 0;
                              else
                                colorindicator[3][0] = 1;
                            });
                          },
                          child: Icon(Icons.check,
                              color: (colorindicator[3][0] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[3][0] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[3][1] == 1)
                                colorindicator[3][1] = 0;
                              else
                                colorindicator[3][1] = 1;
                            });
                          },
                          child: Icon(Icons.close, color: (colorindicator[3][1] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[3][1] == 0)
                                ? Colors.red
                                : Colors.green, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[3][2] == 1)
                                colorindicator[3][2] = 0;
                              else
                                colorindicator[3][2] = 1;
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            color: (colorindicator[3][2] == 0)
                                ? Colors.white
                                : Colors.green,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[3][2] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.red,
                            //onSurface: Colors.red,// <-- Splash color
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (colorindicator[3][3] == 1)
                                colorindicator[3][3] = 0;
                              else
                                colorindicator[3][3] = 1;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      OrderCheckListAttachments(
                                          orderno4, orderamount4, questions[3]),
                                ));
                          },
                          child: Icon(Icons.camera_alt_rounded,
                              color: (colorindicator[3][3] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[3][3] == 0)
                                ? Colors.green
                                : Colors.white,
                            onPrimary: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                          child: Icon(Icons.message,
                              color: (colorindicator[3][4] == 0)
                                  ? Colors.white
                                  : Colors.green),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.green)),
                            padding: EdgeInsets.all(15),
                            primary: (colorindicator[3][4] == 0)
                                ? Colors.green
                                : Colors.white, // <-- Button color
                            onPrimary: Colors.green,
                          ),
                          onPressed: () {
                            setState(() {
                              if (colorindicator[3][4] == 1)
                                colorindicator[3][4] = 0;
                              else
                                colorindicator[3][4] = 1;
                            });

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderCheckListComments(
                                      orderno4, orderamount4, questions[3]),
                                ));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
