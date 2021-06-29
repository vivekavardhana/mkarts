import 'package:flutter/material.dart';
import 'OrdersPage4.dart';
import 'CustomerDetails.dart';

String orderno , orderamount3;
class OrdersPage3 extends StatefulWidget {
  OrdersPage3(orderid, orderamount){
    orderno = orderid;
    orderamount3 = orderamount;
    print(orderno+'   ---   '+orderamount3);
     
      }
  

  @override
  _OrdersPage3State createState() => _OrdersPage3State();
  
}
String sss;
class _OrdersPage3State extends State<OrdersPage3> {
  @override
  Widget build(BuildContext context) {
    final CustomerDetails cd = ModalRoute.of(context).settings.arguments as CustomerDetails;
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Detail"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order",
                            style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w500,
                                                )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Order Id  :",
                            style: TextStyle(color: Colors.black ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            orderno,
                            style: TextStyle(color: Colors.black ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Order Amount  :",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            orderamount3,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Customer",
                              style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Name.  "+cd.customerName.toString()+"  "+cd.address1,
                          style: TextStyle(color: Colors.black ),
                        ),
                      ],
                    ),
                  ),
                 ],
              ),
            ),
          ),
            Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),  
                        child: Text('Checklist',
                                 style: TextStyle(fontSize: 18, color: Colors.white)),
                          onPressed: () {
                            Navigator.pop(context);
            
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrdersPage4(orderno , orderamount3),
                                ));

                          },
                        ),
                      ),
                    ),
                  ),
                
        ],
      ),
    );
  }
}
