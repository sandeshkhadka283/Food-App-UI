import 'package:flutter/material.dart';
import 'package:foodapp/mainmodel.dart';
import 'package:foodapp/popularfoods.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      size: 15,
                                      color: Colors.black,
                                    )),
                              ),
                              const Center(
                                  child: Text(
                                "Product Name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_outline,
                                      size: 15,
                                      color: Colors.red,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: height * 0.2,
                          width: width * 0.5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.1), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 25, // blur radius
                                offset:
                                    Offset(2, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/Fruit.jpg'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Strawberry",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 78, 68, 68),
                                    height: 2,
                                    fontSize: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Description the the given product in details,Description the the given product in details,Description the the given product in details,Description the the given product in details",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 105, 97, 97),
                                        height: 1.5,
                                        letterSpacing: 1,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    size: 15,
                                    color: Colors.grey[500],
                                  ),
                                  Text(
                                    "80 calories",
                                    style: TextStyle(color: Colors.grey[500]),
                                  ),
                                  Text(
                                    "24-30 mins",
                                    style: TextStyle(color: Colors.grey[500]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Product Specification",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "1.Strawbeery item product  2.Market sale value",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                      Text(
                                        "1.Strawbeery item product  2.Market sale value",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs ${model.counter * 50}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  border:
                                                      Border.all(width: 0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(3))),
                                              child: IconButton(
                                                  iconSize: 14,
                                                  onPressed: () =>
                                                      model.counter--,
                                                  icon: Icon(
                                                    Icons.remove,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0),
                                                  )),
                                            ),
                                            Text(
                                              '${model.counter}',
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  border:
                                                      Border.all(width: 0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(3))),
                                              child: IconButton(
                                                  iconSize: 14,
                                                  onPressed: () =>
                                                      model.counter++,
                                                  icon: Icon(
                                                    Icons.add_circle_outline,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0),
                                                  )),
                                            )
                                          ],
                                        ),
                                        height: 30,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      width: width * 0.25,
                                      height: height * 0.04,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 255, 0, 0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Add to cart",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )))
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Suggested",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "more",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ProductSeeMoreItems(
                                          height: height, width: width),
                                      ProductSeeMoreItems(
                                          height: height, width: width),
                                      ProductSeeMoreItems(
                                          height: height, width: width),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Reviews",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "more",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.red),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReviewContainerDetails(
                                      height: height, width: width),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ReviewContainerDetails(
                                      height: height, width: width)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                )));
  }
}

class ReviewContainerDetails extends StatelessWidget {
  const ReviewContainerDetails({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By Name of customer",
                  style: TextStyle(fontSize: 12, color: Colors.grey[900]),
                ),
                Icon(
                  Icons.star_outline,
                  size: 15,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.verified,
                  size: 15,
                  color: Colors.green,
                ),
                Text(
                  "Verified Customer",
                  style: TextStyle(fontSize: 12, color: Colors.green),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    EmptyContainerPhoto(height: height, width: width),
                    VerticalDivider(
                      width: 2,
                    ),
                    EmptyContainerPhoto(height: height, width: width),
                    VerticalDivider(
                      width: 2,
                    ),
                    EmptyContainerPhoto(height: height, width: width),
                    VerticalDivider(
                      width: 2,
                    ),
                    EmptyContainerPhoto(height: height, width: width)
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Size:Small,Quantity:2",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EmptyContainerPhoto extends StatelessWidget {
  const EmptyContainerPhoto({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      width: width * 0.2,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/Fruit.jpg')),
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(3))),
    );
  }
}

class ProductSeeMoreItems extends StatelessWidget {
  const ProductSeeMoreItems({
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
      child: Row(
        children: [
          Container(
            height: height * 0.16,
            width: width * 0.4,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: height * 0.05,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/Fruit.jpg'))),
                ),
                Text(
                  "Vegetable",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Rs 200",
                      style: TextStyle(color: Colors.red),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_outline,
                          color: Colors.red,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.red,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.red,
                          size: 15,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
