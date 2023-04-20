import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  InboxPage();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 15,
                        )),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Recent Offers',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: height * 0.125,
                  width: width * 0.95,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: setttingWidget(Icons.card_giftcard, 'Offer available',
                      'Get offers on every occasion'),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.25,
                  width: width * 0.95,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      setttingWidget(Icons.gif_outlined, 'Free',
                          'List of all order items'),
                      setttingWidget(Icons.card_giftcard, 'Bonus',
                          'List of all order items'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Old Offers",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: height * 0.45,
                  width: width * 0.95,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      setttingWidget(Icons.offline_bolt, '30% OFF',
                          'List of all order items'),
                      setttingWidget(Icons.notifications, 'Promo Code SMART',
                          'List of all order items'),
                      setttingWidget(Icons.mail, 'Get Free Item',
                          'List of all order items'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class setttingWidget extends StatelessWidget {
  final IconData IconDataName;
  String title = '';
  String subtitletext = '';

  setttingWidget(this.IconDataName, this.title, this.subtitletext);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Icon(
                  IconDataName,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                height: height * 0.08,
                width: width * 0.08,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 222, 238, 235),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(subtitletext,
                      style: TextStyle(
                        color: Colors.grey,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
