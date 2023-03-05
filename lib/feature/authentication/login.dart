import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/authentication/register.dart';
import 'package:flutter_application_1/utils/widget/input.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                          const Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20)),
                          TextButton(
                            style: ButtonStyle(
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    const TextStyle(color: Colors.white)),
                                // side: MaterialStateProperty.all<BorderSide>(BorderSide()), /
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            25))), // elevation: MaterialStateProperty.all(),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.only(left: 50, right: 50)),
                                backgroundColor:
                                    const MaterialStatePropertyAll<Color>(
                                        Colors.amber)),
                            child: const Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () => {},
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                    iconSize: 42,
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        "lib/data/local/assets/images/google.svg",
                                        colorFilter: const ColorFilter.mode(
                                            Colors.white, BlendMode.srcIn),
                                        semanticsLabel: 'Label')),
                                IconButton(
                                    iconSize: 42,
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        "lib/data/local/assets/images/facebook.svg",
                                        // color: Colors.black,
                                        // colorFilter: ColorFilter.mode(
                                        //     Colors.white, BlendMode.darken),
                                        semanticsLabel: 'Label')),
                                IconButton(
                                    iconSize: 42,
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        "lib/data/local/assets/images/github.svg",
                                        colorFilter: const ColorFilter.mode(
                                            Colors.white, BlendMode.srcIn),
                                        semanticsLabel: 'Label')),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  "Don't have account?",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterPage()));
                                },
                              )
                            ],
                          )

                          // ignore: prefer_const_constructors
                        ],
                      ))
                ])));
  }
}
