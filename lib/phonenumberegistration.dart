import 'package:flutter/material.dart';
import 'package:foodapp/OTPscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNmberRegistrationPage extends StatefulWidget {
  const PhoneNmberRegistrationPage({Key? key}) : super(key: key);

  @override
  State<PhoneNmberRegistrationPage> createState() =>
      _PhoneNmberRegistrationPageState();
}

class _PhoneNmberRegistrationPageState
    extends State<PhoneNmberRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.delivery_dining,
                    color: Colors.redAccent,
                    size: 120,
                  ),
                  Text(
                    "Welcome ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Enter your phone number to continue",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 01, color: Colors.grey), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: width * 0.6,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 0, 0),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SmsVerificationPage()),
                        );
                      },
                      child: Text(
                        "Get OTP",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
