part of 'pages.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(24, 98, 24, 104),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff393e46),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 188, 152),
                  constraints: const BoxConstraints(
                    maxWidth: 147,
                  ),
                  child: const Text(
                    'Welcome Back, Explorer!',
                    style: TextStyle(
                      color: Color(0xffffdf00),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.175,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 22),
                  width: double.infinity,
                  height: 69,
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      labelText: 'Email Address',
                      labelStyle: const TextStyle(
                        color: Color(0xffffdf00),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      hintText: 'Input Email',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffcccccc),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffffdf00),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(
                            5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xffffdf00),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                            5),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 139),
                  width: double.infinity,
                  height: 69,
                  child: const Stack(
                    children: [
                      SizedBox(
                        width: 335,
                        height: 58.98,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffdf00),
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
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffffdf00),
                    minimumSize: const Size(double.infinity, 38),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xfff4faff),
                    ),
                    children: [
                      const TextSpan(
                        text: 'Don’t have any account? ',
                      ),
                      TextSpan(
                        text: 'Sign Up',
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
                                return const SignUp();
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
