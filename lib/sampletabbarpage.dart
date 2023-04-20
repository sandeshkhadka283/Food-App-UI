import 'package:flutter/material.dart';

class SampleTabBar extends StatefulWidget {
  const SampleTabBar({Key? key}) : super(key: key);

  @override
  State<SampleTabBar> createState() => _SampleTabBarState();
}

class _SampleTabBarState extends State<SampleTabBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 18,
                          ),
                          labelText: "Search here",
                          labelStyle: TextStyle(fontSize: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 01,
                                color: Color.fromARGB(
                                    255, 204, 182, 182)), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      height: height * 0.03,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              // give the tab bar a height [can change hheight to preferred height]
              TabBarFullData(width: width),
              SizedBox(height: height * 0.02),
              // tab bar view here
              TabDataEachSection(height: height, width: width)
            ],
          ),
        ),
      ),
    );
  }
}

class TabDataEachSection extends StatelessWidget {
  const TabDataEachSection({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(
      children: [
        // first tab bar view widget
        Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GridView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: [
                      SingleFooditem(height, width),
                      SingleFooditem(height, width),
                      SingleFooditem(height, width),
                      SingleFooditem(height, width),
                      SingleFooditem(height, width),
                      SingleFooditem(height, width),
                      SingleFooditem(height, width),
                      SingleFooditem(height, width),
                    ]),
              ],
            ),
          ),
        ),

        // second tab bar view widget

        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.15,
                    width: width * 0.32,
                    decoration: BoxDecoration(border: Border.all(width: 0.2)),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.10,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/Fruit.jpg'))),
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey[700]),
                        ),
                        Text(
                          "Description",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          SingleEachItemRestaurant(
                              height: height, width: width),
                          VerticalDivider(),
                          SizedBox(
                            width: 30,
                          ),
                          SingleEachItemRestaurant(
                              height: height, width: width),
                          VerticalDivider(),
                          SizedBox(
                            width: 30,
                          ),
                          SingleEachItemRestaurant(
                              height: height, width: width),
                          VerticalDivider(),
                          SizedBox(
                            width: 30,
                          ),
                          SingleEachItemRestaurant(
                              height: height, width: width),
                          VerticalDivider(),
                          SizedBox(
                            width: 30,
                          ),
                          SingleEachItemRestaurant(
                              height: height, width: width),
                          VerticalDivider(),
                          SizedBox(
                            width: 30,
                          ),
                          SingleEachItemRestaurant(
                              height: height, width: width),
                          VerticalDivider(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ],
    ));
  }
}

class TabBarFullData extends StatelessWidget {
  const TabBarFullData({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 25,
          width: width * 0.6,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
          child: TabBar(
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                2.0,
              ),
              color: Color.fromARGB(255, 252, 0, 0),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Restaurant',
              ),

              // second tab [you can add an icon using the icon property]
              Tab(
                text: 'Item',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SingleEachItemRestaurant extends StatelessWidget {
  const SingleEachItemRestaurant({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.1,
            width: width * 0.1,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Fruit.jpg'))),
          ),
          Text(
            'Name',
            style: TextStyle(fontSize: 12),
          ),
          Text(
            "Description",
            style: TextStyle(color: Colors.grey, fontSize: 10),
          )
        ],
      ),
    );
  }
}

class RestaurantSingleItemDetailContainer extends StatelessWidget {
  String title = "";

  String subtitle = "";

  RestaurantSingleItemDetailContainer({
    Key? key,
    required this.height,
    required this.title,
    required this.subtitle,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.05,
              width: width * 0.1,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 255, 255, 255),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Fruit.jpg'))),
            ),
            SizedBox(width: width * 0.04),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  this.subtitle,
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromARGB(255, 165, 163, 163),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Padding SingleFooditem(double height, double width) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        height: height * 0.25,
        width: width * 0.4,
        decoration: BoxDecoration(
            border: Border.all(width: 0.3, color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color.fromARGB(244, 255, 255, 255)),
        child: RowRestaurantList(width, height)),
  );
}

Column RowRestaurantList(double width, double height) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: width * 0.3,
              height: height * 0.15,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: Color.fromARGB(255, 228, 213, 213),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/Fruit.jpg"))),
            ),
          ),
        ],
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
