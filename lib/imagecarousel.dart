import 'package:flutter/material.dart';
import 'package:foodapp/ProductPage.dart';
import 'package:foodapp/RestaurantInformationwithmenulist.dart';
import 'package:foodapp/sampletabbarpage.dart';

class Imagecaraousel extends StatefulWidget {
  const Imagecaraousel({Key? key}) : super(key: key);

  @override
  State<Imagecaraousel> createState() => _ImagecaraouselState();
}

class _ImagecaraouselState extends State<Imagecaraousel> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double halfwidth = width * 0.5; //50 % width of screen
    double eightypercent = width * 0.95;

    double height = MediaQuery.of(context).size.height;
    double twentypercent = height * 0.3;

    double smallheight = height * 0.2; //20 % of height of screen
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RestaurantMenuListInformation()),
        );
      },
      child: Container(
          height: height * 0.35,
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
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 253, 253, 253),
              width: 1,
            ), //Border.all
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "70% OFF",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                            width: width * 0.2,
                            height: height * 0.035,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                color: Color.fromARGB(255, 255, 17, 0)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductPage()),
                                  );
                                },
                                child: Text(
                                  "Get Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ],
                    ),
                    SizedBox(
                      width: width*0.1,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/Fruit.jpg"))),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Image restaurant and bar",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[900]),
                        ),
                        Text(
                          "Cafe @naxal",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    TextButton(
                        style: ButtonStyle(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SampleTabBar()),
                          );
                        },
                        child: Icon(
                          Icons.delivery_dining,
                          size: 25,
                          color: Color.fromARGB(255, 5, 116, 8),
                        ))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
