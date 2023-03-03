import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/widget/input.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/material.dart';
// import 'package:login/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          //Logo
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: const <Widget>[
                Image(
                  image: AssetImage(
                      'lib/data/local/assets/images/fluttericon.png'),
                  width: 75,
                  height: 75,
                )
              ]),

          //Welcome Back
          Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Welcome Back',
                style: GoogleFonts.bebasNeue(
                    fontSize: 33,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),

                // textAlign: TextAlign.start,
              )),

          //Email TextField
          InputField(
              hint: true,
              hintText: "yes",
              label: "email",
              obsecureText: false,
              controller: emailController),
          InputField(
              hint: false,
              hintText: "password",
              label: "password",
              obsecureText: true,
              controller: passwordController)

          //Password TextField
          // Padding(
          //   padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
          //   child: TextField(
          //     style: TextStyle(color: Colors.white),
          //     keyboardType: TextInputType,
          //     decoration: InputDecoration(
          //         enabledBorder: OutlineInputBorder(
          //             borderSide: BorderSide(color: Colors.white, width: 2),
          //             borderRadius: BorderRadius.circular(7.0)),
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(7),
          //             borderSide: BorderSide(color: Colors.white70)),
          //         labelText: "password",
          //         labelStyle: TextStyle(color: Colors.grey[400])),
          //   ),
          // ),

          //Forgot Password

          //Sign in Button

          //Doesn't have account register
        ],
      ),
    );
  }
}
