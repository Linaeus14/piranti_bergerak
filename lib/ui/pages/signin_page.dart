part of 'pages.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();
  bool _isPasswordHidden = true;
  bool loginFailed = false;

  @override
  void dispose() {
    _ctrlEmail.dispose();
    _ctrlPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool isButtonPressed = false;

    return Material(
      color: const Color(0xff393e46),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                padding: const EdgeInsets.all(8.0),
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
                        controller: _ctrlEmail,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
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
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffffdf00),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 20),
                      width: double.infinity,
                      height: 69,
                      child: Stack(
                        children: [
                          TextField(
                            controller: _ctrlPassword,
                            obscureText: _isPasswordHidden,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 20.0),
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffdf00),
                              ),
                              hintText: 'Input Password',
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffcccccc),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffffdf00),
                                  width: 2,
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffffdf00),
                                  width: 1,
                                ),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordHidden
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: const Color(0xffffdf00),
                                ),
                                onPressed: () {
                                  // Toggle the visibility of the password
                                  setState(() {
                                    _isPasswordHidden = !_isPasswordHidden;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Visibility(
                        visible: loginFailed,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Incorrect Email or Password',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 15,
                              color: Color(0xffDAA520),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 114,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        handleSubmit();
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(330, 40),
                      ).merge(
                        ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
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
                        'Sign In',
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
                                  builder: (context) => const SignUp(),
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
        ),
      ),
    );
  }

  handleSubmit() async {
    if (!_formKey.currentState!.validate()) return false;
    UserData userData = Provider.of<UserData>(context, listen: false);
    final email = _ctrlEmail.value.text;
    final password = _ctrlPassword.value.text;
    Map<String, dynamic> loginSucces = await Auth().login(email, password);

    setState(() {
      if (loginSucces['success']) {
        loginFailed = false;
      } else {
        loginFailed = true;
      }
    });

    if (!loginFailed) {
      userData.userId = loginSucces['userId'];
      await userData.getData();
      if (!context.mounted) return;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const Home();
        },
      ));
    }
    return true;
  }
}
