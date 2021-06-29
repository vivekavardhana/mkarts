import 'package:flutter/material.dart';

String commentorderid;
String commentquestionno;
String commentorderamount;

class OrderCheckListComments extends StatefulWidget {
  OrderCheckListComments(
      String orderno, String orderamount, String questionno) {
    commentorderid = orderno;
    commentquestionno = questionno;
    commentorderamount = orderamount;
  }

  @override
  _OrderCheckListCommentsState createState() => _OrderCheckListCommentsState();
}

class _OrderCheckListCommentsState extends State<OrderCheckListComments> {
  final _comments = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OrdersCheck List Comments"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(48.0, 15.0, 48.0, 15.0),
                          child: Text(commentquestionno,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(48, 10, 48, 10),
                          child: TextField(
                            controller: _comments,
                            decoration: InputDecoration(
                              focusedBorder: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.teal)),
                              // labelText: 'Username',

                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                          child: Text('Save',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          onPressed: () {
                            print(commentorderid +
                                '   ' +
                                commentquestionno +
                                '   ' +
                                commentorderamount);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
