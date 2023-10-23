import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:piranti_bergerak/ui/pages/signup_page.dart';



void main() {
  runApp(const Signin());
}

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: Main(),
      ),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(24, 98, 24, 104),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff393e46),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 188, 152),
                  constraints: BoxConstraints(
                    maxWidth: 147,
                  ),
                  child: Text(
                    'Welcome Back, Explorer!',
                    style: TextStyle(
                      color: const Color(0xffffdf00),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.175,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 22),
                  width: double.infinity,
                  height: 69,
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      labelText: 'Email Address',
                      labelStyle: TextStyle(
                        color: const Color(0xffffdf00),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      hintText: 'Input Email',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffcccccc),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xffffdf00),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(
                            5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xffffdf00),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                            5),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 139),
                  width: double.infinity,
                  height: 69,
                  child: Stack(
                    children: [
                      Container(
                        width: 335,
                        height: 58.98,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffffdf00),
                            ),
                            hintText: 'Input Password',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffcccccc),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xffffdf00),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xffffdf00),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffffdf00),
                    minimumSize: Size(double.infinity, 38),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xfff4faff),
                    ),
                    children: [
                      TextSpan(
                        text: 'Don’t have any account? ',
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: const Color(0xffffdf00),
                          decorationColor: const Color(0xffffdf00),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Signup();
                              },
                            ));
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
