part of 'pages.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isButtonPressed = false;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(23, 100, 23, 104),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff393e46),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 119, 48),
                  constraints: const BoxConstraints(
                    maxWidth: 218,
                  ),
                  child: const Text(
                    'Welcome to Flutix Let’s start our journey',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.175,
                      color: Color(0xffffdf00),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 22),
                  width: double.infinity,
                  height: 69,
                  child: Material(
                    color: const Color(0xff393e46),
                    child: TextField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                          color: Color(0xffffdf00),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        hintText: 'Input Email',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffcccccc),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffffdf00),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffffdf00),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 22),
                  width: double.infinity,
                  height: 69,
                  child: Material(
                    color: const Color(0xff393e46),
                    child: TextField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Color(0xffffdf00),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        hintText: 'Input Password',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffcccccc),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffffdf00),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffffdf00),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 22),
                  width: double.infinity,
                  height: 69,
                  child: Material(
                    color: const Color(0xff393e46),
                    child: TextField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Color(0xffffdf00),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        hintText: 'Input Name',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffcccccc),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffffdf00),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffffdf00),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 36),
                  width: double.infinity,
                  height: 93,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 45.62, 0),
                        width: 98.84,
                        height: 93,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/Profile.png"),
                              fit: BoxFit.cover),
                          border: Border.all(color: const Color(0xFFFFDF00)),
                          borderRadius: BorderRadius.circular(70),
                        ),
                      ),
                      SizedBox(
                        // margin: const EdgeInsets.fromLTRB(0, 22.14, 0, 15.5),
                        width: 160.53,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.fromLTRB(1.09, 0, 0, 4.71),
                              child: const Text(
                                'Pick a Photo!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  decoration: TextDecoration.none,
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
                                fixedSize: const Size(200, 37.64),
                              ),
                              child: const Text(
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
                  onPressed: () {
                    // Logika yang ingin Anda jalankan saat tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(330, 40), 
                  ).merge(
                    ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            isButtonPressed = true;
                            return const Color(0xFFDAA520); 
                          } else {
                            isButtonPressed = false;
                            return const Color(0xffffdf00);
                          }
                        },
                      ),
                    ),
                  ),
                  child: const Text(
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
                    style: const TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      height: 1.175,
                      color: Color(0xff000000),
                    ),
                    children: [
                      const TextSpan(
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
                        text: 'Sign In',
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: Color(0xffffdf00),
                          decorationColor: Color(0xffffdf00),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const SignIn();
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
