import 'package:flutter/material.dart';
import 'package:foodapp/Homepage.dart';
import 'package:foodapp/OrderStatusPage.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 15,
                    ))
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 100,
                    ),
                    Text(
                      "Success",
                      style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.green),
                    ),
                    Text("Your order have been successfull placed"),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: width * 0.5,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 0, 0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderStatusPage()),
                              );
                            },
                            child: Text(
                              "Order Status",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: width * 0.5,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 0, 0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()),
                              );
                            },
                            child: Text(
                              "Continue Shopping",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )))
                  ],
                ),
              ),
              height: 450,
              width: width * 0.8,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3), //color of shadow
                      spreadRadius: 1, //spread radius
                      blurRadius: 10, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            )
          ],
        ),
      ),
    ));
  }
}
