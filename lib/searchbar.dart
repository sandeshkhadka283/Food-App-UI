import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        height: height * 0.04,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.mic),
            prefixIcon: Icon(Icons.search),
            labelText: "Search here",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 01,
                  color: Color.fromARGB(255, 187, 170, 170)), //<-- SEE HERE
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }
}
