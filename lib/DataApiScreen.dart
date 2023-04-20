import 'package:flutter/material.dart';
import 'package:foodapp/Homepage.dart';
import 'package:foodapp/UserModel.dart';
import 'package:foodapp/api_service.dart';
import 'package:foodapp/Geo.dart';

class DataApiScreen extends StatefulWidget {
  const DataApiScreen({Key? key}) : super(key: key);

  @override
  State<DataApiScreen> createState() => _DataApiScreenState();
}

class _DataApiScreenState extends State<DataApiScreen> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!.cast<UserModel>();
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeoLocation()),
                );
              },
              child: Container(
                color: Colors.red,
                child: Card(
                  child: Column(
                    children: [
                      Text(
                        _userModel![index].id.toString(),
                        overflow: TextOverflow.fade,
                      ),
                      Text(
                        _userModel![index].title,
                        overflow: TextOverflow.clip,
                      ),
                      Image.network(_userModel![index].thumbnailUrl + ".jpg")
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
