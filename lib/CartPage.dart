import 'package:flutter/material.dart';
import 'package:foodapp/CheckoutPage.dart';
import 'package:foodapp/mainmodel.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double halfwidth = width * 0.5; //50 % width of screen
    double eightypercent = width * 0.95;

    double height = MediaQuery.of(context).size.height;
    double twentypercent = height * 0.3;

    double smallheight = height * 0.2; //2
    var subtotal;
    return ChangeNotifierProvider(
      create: (_) => MainModel(),
      child: Consumer<MainModel>(
          builder: (context, model, child) => SafeArea(
                child: Scaffold(
                  body: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    size: 15,
                                  )),
                              Text(
                                " My Cart",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "You have 2 items in your cart",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                        CartItemDetails(),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: Container(
                    height: height * 0.3,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Sub total : ",
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1),
                                        ),
                                        Text(
                                          '${model.counter * 50}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Delivery : ",
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1)),
                                        Text(
                                          "100",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      thickness: 1,
                                      height: 1,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Total : ",
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 1)),
                                        Text(
                                          '${model.counter*50}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        //Container(
                        // height: height * 0.05,
                        // width: width * 0.7,
                        //decoration: BoxDecoration(
                        //   color: Colors.red,
                        //  borderRadius: BorderRadius.all(Radius.circular(300))),
                        //child: CheckoutButton(context)),
                        Container(
                            width: width * 0.6,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 0, 0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CheckoutPage()),
                                  );
                                },
                                child: Text(
                                  "Checkout",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )))
                      ],
                    ),
                  ),
                ),
              )),
    );
  }

  ElevatedButton CheckoutButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 255, 255, 255),
        textStyle: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CheckoutPage()),
        );
      },
      child: Text(
        "Checkout",
        style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
    );
  }

  ChangeNotifierProvider<MainModel> CartItemDetails() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return ChangeNotifierProvider(
      create: (_) => MainModel(),
      child: Consumer<MainModel>(
          builder: (context, model, child) => Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  height: height * 0.1,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Color.fromARGB(132, 158, 158, 158),
                            blurRadius: 7,
                            spreadRadius: 0.1,
                            offset: Offset(0, 2)),
                      ],
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: height * 0.08,
                            width: width * 0.18,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/Fruit.jpg")),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name"),
                                Text(
                                  "${model.counter * 50}",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                Text(
                                  "Stock",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: height * 0.035,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color.fromARGB(255, 255, 255, 255),
                            shape: BoxShape.rectangle),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: IconButton(
                                  onPressed: () {
                                    model.counter--;
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    size: 12,
                                    color: Color.fromARGB(255, 255, 0, 0),
                                  )),
                            ),
                            Text(
                              '${model.counter}',
                              style: TextStyle(fontSize: 10),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: IconButton(
                                  onPressed: () {
                                    model.counter++;
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 12,
                                    color: Color.fromARGB(255, 255, 0, 0),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
