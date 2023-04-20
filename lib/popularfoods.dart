import 'package:flutter/material.dart';
import 'package:foodapp/ProductPage.dart';

class Popularfood extends StatefulWidget {
  const Popularfood({Key? key}) : super(key: key);

  @override
  State<Popularfood> createState() => _PopularfoodState();
}

class _PopularfoodState extends State<Popularfood> {
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
        color: Color.fromARGB(255, 255, 255, 255),

        border: Border.all(
          color: Color.fromARGB(255, 253, 253, 253),
          width: 1,
        ), //Border.all
        borderRadius: BorderRadius.circular(5),
      ),
      height: height * 0.25,
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
                  "Popular Foods",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "See more",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  PopularFoodSingleItem(),
                  SizedBox(
                    width: 12,
                  ),
                  PopularFoodSingleItem(),
                  SizedBox(
                    width: 12,
                  ),
                  PopularFoodSingleItem(),
                  SizedBox(
                    width: 12,
                  ),
                  PopularFoodSingleItem(),
                  SizedBox(
                    width: 12,
                  ),
                  PopularFoodSingleItem(),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularFoodSingleItem extends StatelessWidget {
  const PopularFoodSingleItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage()),
                );
              },
              child: Container(
                height: height * 0.1,
                width: width * 0.25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Fruit.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Food',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),
            ),
          ],
        )
      ],
    );
  }
}
