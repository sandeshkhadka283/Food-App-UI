import 'package:flutter/material.dart';
import 'package:foodapp/RestaurantInformationwithmenulist.dart';

class SingleRestaurantInfo extends StatefulWidget {
  const SingleRestaurantInfo({Key? key}) : super(key: key);

  @override
  State<SingleRestaurantInfo> createState() => _SingleRestaurantInfoState();
}

class _SingleRestaurantInfoState extends State<SingleRestaurantInfo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RestaurantMenuListInformation()),
        );
      },
      child: Container(
        height: height * 0.3,
        width: width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 5, // blur radius
              offset: Offset(1, 2), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
          ],
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            color: Color.fromARGB(255, 253, 253, 253),
            width: 1,
          ), //Border.all
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/Fruit.jpg"))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Restaurant Name",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "3.8",
                            style: TextStyle(
                                color: Color.fromARGB(255, 231, 0, 0),
                                fontWeight: FontWeight.w200),
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            size: 16,
                            color: Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.delivery_dining,
                        color: Colors.green[800],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
