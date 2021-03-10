import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Components/Button.dart';
import 'package:flutter_unity_app/Components/Input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.times,
                      size: 28,
                    ),
                    color: Color(0xff6602FF),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 15),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            "Forgot your Password?",
                            style: TextStyle(
                              color: Color(0xff6602FF),
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Enter the email address to recieve a reset password link.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Input(
                            hint: "Email",
                            setText: () {},
                            type: INPUT_TYPE.EMAIL,
                            backgroundColor: Color(0xffF5F5F5),
                          ),
                        ),
                        Button(
                          text: "Send Link",
                          onPress: () {},
                          color: Color(0xffC3C3C3),
                          textColor: Colors.white,
                          shadowColor: Colors.transparent,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Do not remember your ID?"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Contact us at"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "support@inspiritvr.com",
                              style: TextStyle(color: Color(0xff6602FF)),
                            ),
                          ),
                        ],
                      ),
                      Text("We got you!"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
