import 'package:flutter/material.dart';

String commentorderid;
String commentquestionno;
String commentorderamount;

class OrderCheckListAttachments extends StatefulWidget {
  OrderCheckListAttachments(
      String orderno, String orderamount, String questionno) {
    commentorderid = orderno;
    commentquestionno = questionno;
    commentorderamount = orderamount;
  }

  @override
  _OrderCheckListAttachmentsState createState() =>
      _OrderCheckListAttachmentsState();
}

class _OrderCheckListAttachmentsState extends State<OrderCheckListAttachments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checklist Attachments"),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(commentquestionno , style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Icon(Icons.camera_alt_rounded,
                        color: Colors.green, size: 100),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text('Save', style: TextStyle(fontSize: 16, color: Colors.white)),
                onPressed: () {
                  print(commentorderid +
                      '   ' +
                      commentquestionno +
                      '   ' +
                      commentorderamount);
                  // Navigator.pop(context);

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => OrdersPage4(),
                  //     ));
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
