import 'package:flutter/material.dart';
import 'package:foodapp/FoodRestaurant.dart';
import 'package:foodapp/ListIcon.dart';

class Foodtypes extends StatefulWidget {
  const Foodtypes({Key? key}) : super(key: key);

  @override
  State<Foodtypes> createState() => _FoodtypesState();
}

class _FoodtypesState extends State<Foodtypes> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
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
        color: Colors.white,

        border: Border.all(
          color: Color.fromARGB(255, 253, 253, 253),
          width: 1,
        ), //Border.all
        borderRadius: BorderRadius.circular(5),
      ),
      height: height * 0.16,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tabview()),
                    );
                  },
                  child: Text(
                    "See more",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.red),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ListIcon()
          ],
        ),
      ),
    );
  }
}
