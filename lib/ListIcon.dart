import 'package:flutter/material.dart';
import 'package:foodapp/InboxPage.dart';
import 'package:foodapp/RestaurantInformationwithmenulist.dart';
import 'package:foodapp/sampletabbarpage.dart';

class ListIcon extends StatefulWidget {
  const ListIcon({Key? key}) : super(key: key);

  @override
  State<ListIcon> createState() => _ListIconState();
}

class _ListIconState extends State<ListIcon> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.1,
      width: width,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconDataColumnSingle(height: height, width: width),
          IconDataColumnSingle(height: height, width: width),
          IconDataColumnSingle(height: height, width: width),
        ],
      ),
    );
  }
}

class IconDataColumnSingle extends StatelessWidget {
  const IconDataColumnSingle({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SampleTabBar()),
              );
            },
            child: Container(
                child: Icon(
                  Icons.restaurant,
                  size: 15,
                  color: Color.fromARGB(255, 8, 204, 14),
                ),
                height: height * 0.05,
                width: width * 0.2,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[200])),
          ),
          Text(
            "Grocery",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
