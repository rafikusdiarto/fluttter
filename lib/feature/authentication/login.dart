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
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'lib/data/local/assets/images/bg.jpg')), // border: Border.all(color: Colors.white10),
            ),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  //Logo
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Image(
                            image: AssetImage(
                                'lib/data/local/assets/images/fluttericon.png'),
                            width: 75,
                            height: 75,
                          ),
                        )
                      ]),

                  //Welcome Back
                  Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        'Welcome Back',
                        style: GoogleFonts.bebasNeue(
                            fontSize: 33,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),

                        // textAlign: TextAlign.start,
                      )),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.amber.withOpacity(0.3),
                                spreadRadius: -3,
                                blurRadius: 7,
                                offset: const Offset(7, 7))
                          ],
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(25)),
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: [
                          InputField(
                              hint: true,
                              hintText: "email",
                              label: "email",
                              obsecureText: false,
                              controller: emailController),
                          InputField(
                              hint: false,
                              hintText: "password",
                              label: "password",
                              obsecureText: true,
                              controller: passwordController),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  "Forgot Password?",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.grey[200]),
                                ),
                              )),
                          TextButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.amber)),
                            child: const Text("Signin"),
                            onPressed: () => {},
                          )
                        ],
                      ))
                ])));
  }
}
