import 'package:flutter/material.dart';

class Tabview extends StatelessWidget {
  const Tabview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () {
                          //code to execute when this button is pressed
                        }),
                  ],
                ),
              ),

              //more widgets to place here
            ],
            backgroundColor: Color.fromARGB(255, 255, 0, 0),
            bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 255, 255, 255),
              labelColor: Color.fromARGB(255, 255, 255, 255),
              tabs: const [
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: "Restaurant",
                ),
                Tab(
                  icon: Icon(Icons.account_box_outlined),
                  text: "Food Item",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  children: [
                    SingleRestaurantitem(height, width),
                    SingleRestaurantitem(height, width),
                    SingleRestaurantitem(height, width),
                    SingleRestaurantitem(height, width),
                    SingleRestaurantitem(height, width)
                  ],
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleFooditem(height, width),
                      SizedBox(
                        height: 5,
                      ),
                      SingleFooditem(height, width),
                      SizedBox(
                        height: 5,
                      ),
                      SingleFooditem(height, width),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding SingleRestaurantitem(double height, double width) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        height: height * 0.06,
        width: width,
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/Fruit.jpg"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Red Cafe",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "1.1miles",
                        style: TextStyle(color: Colors.grey[600], fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
      ),
    );
  }

  Padding SingleFooditem(double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: height * 0.25,
              width: width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.grey[200]),
              child: RowRestaurantList(width, height)),
          SizedBox(
            width: 8,
          ),
          Container(
              height: height * 0.25,
              width: width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.grey[200]),
              child: RowRestaurantList(width, height)),
        ],
      ),
    );
  }

  Column RowRestaurantList(double width, double height) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width * 0.3,
          height: height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 255, 255, 255),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Red restaurant',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Text(
                    '3100/meal',
                    style: TextStyle(fontSize: 8, color: Colors.grey[700]),
                  ),
                  Text(
                    'Hills',
                    style: TextStyle(fontSize: 8, color: Colors.grey[700]),
                  )
                ],
              ),
              Container(
                  height: height * 0.04,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.circle),
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.red,
                          size: 15,
                        )),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
