import 'package:flutter/material.dart';
import 'package:foodapp/AccountPage.dart';
import 'package:foodapp/CartPage.dart';
import 'package:foodapp/Foodtypes.dart';
import 'package:foodapp/InboxPage.dart';
import 'package:foodapp/ListIcon.dart';
import 'package:foodapp/OrderStatusPage.dart';
import 'package:foodapp/SingleRestaurantInfo.dart';
import 'package:foodapp/imagecarousel.dart';
import 'package:foodapp/navbar.dart';
import 'package:foodapp/popularfoods.dart';
import 'package:foodapp/searchbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Navbar(),
              SizedBox(
                height: 5,
              ),
              Foodtypes(),
              SizedBox(
                height: 2,
              ),
              Imagecaraousel(),
              SizedBox(
                height: 2,
              ),
              SizedBox(
                height: 2,
              ),
              Popularfood(),
              SizedBox(
                height: 2,
              ),
              SingleRestaurantInfo(),
              SizedBox(
                height: 2,
              ),
              Popularfood(),
              SizedBox(
                height: 2,
              ),
              SingleRestaurantInfo(),
              SizedBox(
                height: 2,
              ),
              Popularfood(),
              SizedBox(
                height: 2,
              ),
              SingleRestaurantInfo(),
              SizedBox(
                height: 2,
              ),
              Popularfood(),
              SizedBox(
                height: 2,
              ),
              SingleRestaurantInfo(),
              SizedBox(
                height: 2,
              ),
              Popularfood(),
              SizedBox(
                height: 2,
              ),
              SingleRestaurantInfo()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
                  );
                },
                icon: Icon(
                  Icons.account_box,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InboxPage()),
                  );
                },
                icon: Icon(
                  Icons.inbox,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderStatusPage()),
                  );
                },
                icon: Icon(
                  Icons.delivery_dining,
                  color: Colors.black,
                  size: 18,
                ),
              ),
              label: 'Inbox',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
