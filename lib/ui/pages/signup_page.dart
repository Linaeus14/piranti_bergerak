part of 'pages.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String idDocument = '';
  bool _isPasswordHidden = true;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();
  final TextEditingController _ctrlNama = TextEditingController();

  @override
  void dispose() {
    _ctrlEmail.dispose();
    _ctrlPassword.dispose();
    _ctrlNama.dispose();
    super.dispose();
  }

  String imagePath = '';
  bool textFieldEmptyEmail = false;
  bool textFieldEmptyPassword = false;
  bool textFieldEmptyNama = false;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool isButtonPressed = false;
    return Scaffold(
      backgroundColor: const Color(0xff393e46),
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
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
                      Visibility(
                        visible: textFieldEmptyEmail,
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, left: 10.0, bottom: 10.0),
                            child: Text(
                              'Email Tidak Boleh Kosong',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Color(0xFFDAA520),
                                fontSize: 13,
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
                          child: TextFormField(
                            controller: _ctrlEmail,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                              filled: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
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
                            validator: (value) {
                              setState(() {
                                if (value!.isEmpty) {
                                  // return 'Email tidak boleh kosong';
                                  textFieldEmptyEmail = true;
                                }
                              });

                              return null;
                            },
                          ),
                        ),
                      ),
                      Visibility(
                        visible: textFieldEmptyPassword,
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, left: 10.0, bottom: 10.0),
                            child: Text(
                              'Password Tidak Boleh Kosong',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Color(0xFFDAA520),
                                fontSize: 13,
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
                          child: TextFormField(
                            // controller: TextEditingController(),
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
                                color: Color(0xffffdf00),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
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
                            validator: (value) {
                              setState(() {
                                if (value!.isEmpty) {
                                  // return 'Email tidak boleh kosong';
                                  textFieldEmptyPassword = true;
                                }
                              });

                              return null;
                            },
                          ),
                        ),
                      ),
                      Visibility(
                        visible: textFieldEmptyNama,
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, left: 10.0, bottom: 10.0),
                            child: Text(
                              'Nama Tidak Boleh Kosong',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Color(0xFFDAA520),
                                fontSize: 13,
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
                          child: TextFormField(
                            controller: _ctrlNama,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
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
                            validator: (value) {
                              setState(() {
                                if (value!.isEmpty) {
                                  // return 'Nama tidak boleh kosong';
                                  textFieldEmptyNama = true;
                                }
                              });

                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 0, 16, 36),
                        width: double.infinity,
                        height: 93,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            (imagePath.isNotEmpty)
                                ? Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 0, 45.62, 0),
                                    width: 98.84,
                                    height: 93,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(imagePath),
                                          fit: BoxFit.cover),
                                      border: Border.all(
                                          color: const Color(0xFFFFDF00)),
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                  )
                                : Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 0, 45.62, 0),
                                    width: 98.84,
                                    height: 93,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image:
                                              AssetImage("assets/Profile.png"),
                                          fit: BoxFit.cover),
                                      border: Border.all(
                                          color: const Color(0xFFFFDF00)),
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
                                    margin: const EdgeInsets.fromLTRB(
                                        1.09, 0, 0, 4.71),
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
                                    onPressed: () async {
                                      XFile? file = await Provider.of<UserData>(
                                              context,
                                              listen: false)
                                          .getImage();
                                      imagePath =
                                          await Auth().uploadImage(file);

                                      setState(() {});
                                    },
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
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
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
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
          ),
        ),
      ),
    );
  }

  handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    final email = _ctrlEmail.value.text;
    final password = _ctrlPassword.value.text;
    final UserData userData = Provider.of<UserData>(context, listen: false);

    Map<String, dynamic> registrationSuccess =
        await Auth().regis(email, password);

    if (registrationSuccess['success']) {
      String uid = registrationSuccess['userId'];
      // Jika registrasi berhasil, arahkan pengguna ke halaman profil

      userData.userId = uid;
      await userData.addUserToFirestore(
          uid, _ctrlEmail.text, _ctrlNama.text, imagePath);
      await userData.getData();

      if (!context.mounted) return;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const UserProfile();
        },
      ));
    }
    // Jika registrasi gagal, tampilkan AlertDialog
    else {
      if (!context.mounted) return;
      dialog("Registrasi Gagal");
    }
  }

  void dialog(String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(text),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Tutup AlertDialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
