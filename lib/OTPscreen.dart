import 'package:flutter/material.dart';
import 'package:foodapp/Homepage.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SmsVerificationPage extends StatefulWidget {
  const SmsVerificationPage({Key? key}) : super(key: key);

  @override
  State<SmsVerificationPage> createState() => _SmsVerificationPageState();
}

class _SmsVerificationPageState extends State<SmsVerificationPage>
    with CodeAutoFill {
  var codeValue = "";

  @override
  void initState() {
    super.initState();

    _listenSmsCode();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  _listenSmsCode() async {
    final String signature = await SmsAutoFill().getAppSignature;
    print("Signature: $signature");

    await SmsAutoFill().unregisterListener();
    await SmsAutoFill().listenForCode();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Enter the verification code",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Verification code was sent to the number #98478489479",
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Center(
                          child: PinFieldAutoFill(
                              currentCode: codeValue,
                              codeLength: 4,
                              autoFocus: true,
                              decoration: UnderlineDecoration(
                                lineHeight: 1,
                                lineStrokeCap: StrokeCap.square,
                                bgColorBuilder: PinListenColorBuilder(
                                    Color.fromARGB(255, 202, 148, 148),
                                    Colors.grey.shade200),
                                colorBuilder:
                                    const FixedColorBuilder(Colors.transparent),
                              ),
                              onCodeChanged: (code) {
                                setState(() {
                                  codeValue = code!;
                                });
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Didnt get the code? Resend code",
                        style: TextStyle(  fontSize: 12,color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: width * 0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color.fromARGB(255, 255, 17, 0)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Homepage()),
                          );
                        },
                        child: Text(
                          "Verify",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ))),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  @override
  void codeUpdated() {
    setState(() {
      codeValue = code!;
    });
  }
}
