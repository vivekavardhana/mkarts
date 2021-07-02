import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'OrderCheckListComments.dart';
import 'OrderCheckListAttachments.dart';
import '../models/CheckListDetails.dart';

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

  List<CheckListDetails> listcolorindicator = [];

  void initindicators() async {
    CheckListDetails ci1 = new CheckListDetails(
        question:
            "If the house has a basement or below grade rooms, will the foundation be waterproofed in lieu of the standard asphalitic dampproofing ?",
        check: "0",
        close: "0",
        remove: "0",
        camera: "0",
        message: "0");
    CheckListDetails ci2 = new CheckListDetails(
        question: "Does your quotation include a programmable thermostat ?",
        check: "0",
        close: "0",
        remove: "0",
        camera: "0",
        message: "0");
    CheckListDetails ci3 = new CheckListDetails(
        question: "What is the length of the roofing material warrenty ?",
        check: "0",
        close: "0",
        remove: "0",
        camera: "0",
        message: "0");
    CheckListDetails ci4 = new CheckListDetails(
        question:
            "Will you install all products and materials according to the manufacturer\'s specification",
        check: "0",
        close: "0",
        remove: "0",
        camera: "0",
        message: "0");
    var cibox = await Hive.openBox<CheckListDetails>("ci");
    cibox.add(ci1);
    cibox.add(ci2);
    cibox.add(ci3);
    cibox.add(ci4);
  }

  void getcolorindicators() async {
    var cibox = await Hive.openBox<CheckListDetails>("ci");
    cibox.clear();
    setState(() {
      listcolorindicator = cibox.values.toList();
    });
  }

  @override
  void initState() {
    listcolorindicator.clear();
    initindicators();
    getcolorindicators();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Order Checklist"),
        ),
        body: ListView.builder(
            itemCount: listcolorindicator.length,
            itemBuilder: (context, position) {
              CheckListDetails ci = listcolorindicator[position];

              return Padding(
                padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ci.question,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Text(listcolorindicator[0].check),

                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (listcolorindicator[position].check == "1")
                                    listcolorindicator[position].check = "0";
                                  else
                                    listcolorindicator[position].check = "1";
                                });
                              },
                              child: Icon(Icons.check,
                                  color: (listcolorindicator[position].check ==
                                          "0")
                                      ? Colors.white
                                      : Colors.green),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.green)),
                                padding: EdgeInsets.all(15),
                                primary:
                                    (listcolorindicator[position].check == "0")
                                        ? Colors.green
                                        : Colors.white, // <-- Button color
                                onPrimary: Colors.green,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (listcolorindicator[position].close == "1")
                                    listcolorindicator[position].close = "0";
                                  else
                                    listcolorindicator[position].close = "1";
                                });
                              },
                              child: Icon(Icons.close,
                                  color: (listcolorindicator[position].close ==
                                          "0")
                                      ? Colors.white
                                      : Colors.green),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.green)),
                                padding: EdgeInsets.all(15),
                                primary:
                                    (listcolorindicator[position].close == "0")
                                        ? Colors.red
                                        : Colors.white, // <-- Button color
                                onPrimary: Colors.green,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (listcolorindicator[position].remove ==
                                      "1")
                                    listcolorindicator[position].remove = "0";
                                  else
                                    listcolorindicator[position].remove = "1";
                                });
                              },
                              child: Icon(Icons.remove,
                                  color: (listcolorindicator[position].remove ==
                                          "0")
                                      ? Colors.white
                                      : Colors.green),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.green)),
                                padding: EdgeInsets.all(15),
                                primary:
                                    (listcolorindicator[position].remove == "0")
                                        ? Colors.green
                                        : Colors.white, // <-- Button color
                                onPrimary: Colors.green,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (listcolorindicator[position].camera ==
                                      "1")
                                    listcolorindicator[position].camera = "0";
                                  else
                                    listcolorindicator[position].camera = "1";
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          OrderCheckListAttachments(orderno4,
                                              orderamount4, ci.question),
                                    ));
                              },
                              child: Icon(Icons.camera_alt_rounded,
                                  color: (listcolorindicator[position].camera ==
                                          "0")
                                      ? Colors.white
                                      : Colors.green),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.green)),
                                padding: EdgeInsets.all(15),
                                primary:
                                    (listcolorindicator[position].camera == "0")
                                        ? Colors.green
                                        : Colors.white, // <-- Button color
                                onPrimary: Colors.green,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (listcolorindicator[position].message ==
                                      "1")
                                    listcolorindicator[position].message = "0";
                                  else
                                    listcolorindicator[position].message = "1";
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          OrderCheckListComments(orderno4,
                                              orderamount4, ci.question),
                                    ));
                              },
                              child: Icon(Icons.message,
                                  color:
                                      (listcolorindicator[position].message ==
                                              "0")
                                          ? Colors.white
                                          : Colors.green),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.green)),
                                padding: EdgeInsets.all(15),
                                primary:
                                    (listcolorindicator[position].message ==
                                            "0")
                                        ? Colors.green
                                        : Colors.white, // <-- Button color
                                onPrimary: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
