import 'package:flutter/material.dart';
import 'DrawerCode.dart';
import 'OrdersPage3.dart';
import 'CustomerDetails.dart';
import 'package:hive/hive.dart';

class OrdersPage2 extends StatefulWidget {
  OrdersPage2({this.username = ""});
  final String username;

  @override
  _OrdersPage2State createState() => _OrdersPage2State();
}

class _OrdersPage2State extends State<OrdersPage2> {
  List<CustomerDetails> listcustomerdetails = [];

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

  void addcustomer() async {
    CustomerDetails addCD = new CustomerDetails(
        customerName: "Customer1",
        address1: '1234567',
        address2: 'Kengeri',
        address3: 'Bangalore');

    CustomerDetails addCDE = new CustomerDetails(
        customerName: "Customer1",
        address1: '1234',
        address2: 'Kengeri',
        address3: 'Bangalore');
    var abox = await Hive.openBox<CustomerDetails>("customerdetails");

    abox.add(addCD);
    abox.add(addCDE);
  }

  void getEmployees() async {
    final abox = await Hive.openBox<CustomerDetails>("customerdetails");
    abox.clear();
    setState(() {
      listcustomerdetails = abox.values.toList();
      //print(listcustomerdetails.length.toInt());
    });
  }

  @override
  void initState() {
    listcustomerdetails.clear();
    addcustomer();
    getEmployees();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Orders"),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
                onPressed: () {},
              )
            ],
          ),
          drawer: DrawerCode(),
          body: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: listcustomerdetails.length,
                      itemBuilder: (context, position) {
                        CustomerDetails cd = listcustomerdetails[position];
                        var cname = cd.customerName;
                        var a1 = cd.address1;
                        var a2 = cd.address2;
                        var a3 = cd.address3;

                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text("Order",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                      TextButton(
                                        child: Text("Open".toUpperCase(),
                                            style: TextStyle(fontSize: 14, color: Colors.white,),),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.green),
                                            padding: MaterialStateProperty
                                                .all<EdgeInsets>(
                                                    EdgeInsets.all(15)),
                                            foregroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.black),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ))),
                                        onPressed: () {
                                              Navigator.pop(context);

                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    OrdersPage3(
                                                                        '11',
                                                                         '1223.55'
                                                                    ),
                                                                settings:  RouteSettings(name: "1", arguments: cd,    ), 
                                                                
                                                                    ));
                                         },
                                      ),
                                      
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "Order Id  :",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          "11",
                                          //od.orderno.toString(),
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "Order Amount  :",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "111",
                                          //od.orderamount.toString(),
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(""),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text("Customer",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(cname 
                                              ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                              a1 +'   '+
                                              a2 +'   '+
                                              a3 +'   '
                                              ),
                                        ),    
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      })

                  //(child: Center(child: Text("Click \"Orders page 2 "))),
                  ),
            ], //+listcustomerdetails[0].customerName
          ),
        ));
  }
}
