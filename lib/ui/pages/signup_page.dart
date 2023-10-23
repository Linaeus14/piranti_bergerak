import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:piranti_bergerak/ui/pages/signin_page.dart';


void main() {
  runApp(const Signup());
}

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
            padding: EdgeInsets.fromLTRB(23, 100, 23, 104),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff393e46),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 119, 48),
                  constraints: BoxConstraints(
                    maxWidth: 218,
                  ),
                  child: Text(
                    'Welcome to Flutix Let’s start our journey',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.175,
                      color: Color(0xffffdf00),
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
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 22),
                  width: double.infinity,
                  height: 69,
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: const Color(0xffffdf00),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
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
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 22),
                  width: double.infinity,
                  height: 69,
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        color: const Color(0xffffdf00),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      hintText: 'Input Name',
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
                Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 36),
                  width: double.infinity,
                  height: 93,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 45.62, 0),
                        width: 98.84,
                        height: 93,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_outline_outlined, 
                              size: 48, 
                              color: Color(
                                  0xFFFFFFFF), 
                            ),
                            SizedBox(height:8),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 22.14, 0, 15.5),
                        width: 170.53,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(1.09, 0, 0, 4.71),
                              child: Text(
                                'Pick a Photo!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                side: const BorderSide(
                                    color: Color(0xffffdf00), width: 2.0),
                                fixedSize: Size(200, 37.64),
                              ),
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  height: 1.175,
                                  color: Color(0xffffdf00),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffffdf00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    minimumSize: Size(double.infinity, 38),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 1.175,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      height: 1.175,
                      color: Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'Already has an account?',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          height: 1.175,
                          color: Color(0xffffffff),
                        ),
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
                                return Signin();
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
