part of 'pages.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String idDocument = '';

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _ctrlEmail = TextEditingController();

  final TextEditingController _ctrlPassword = TextEditingController();

  final TextEditingController _ctrlNama = TextEditingController();

  // @override
  // void dispose() {
  //   _ctrlEmail.dispose();
  //   _ctrlEmail.dispose();
  //   _ctrlNama.dispose();
  //   super.dispose();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _ctrlEmail.addListener(_printLatestEmail);
  //   _ctrlPassword.addListener(_printLatestPassword);
  //   _ctrlNama.addListener(_printLatestNama);
  // }

  // void _printLatestEmail() {
  //   print('Nama : ${_ctrlEmail.text}');
  // }

  // void _printLatestPassword() {
  //   print('Nama : ${_ctrlPassword.text}');
  // }

  // void _printLatestNama() {
  //   print('Usia : ${_ctrlNama.text}');
  // }

  String imagePath = '';
  
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference users = firestore.collection("data_user");

    bool isButtonPressed = false;

    return Center(
      child: Form(
        key: _formKey,
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
                        controller: _ctrlEmail,
                        // controller: TextEditingController(),
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
                        // controller: TextEditingController(),
                        controller: _ctrlPassword,
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
                        controller: _ctrlNama,
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
                      children: <Widget> [
                        
                        (imagePath.isNotEmpty)
                          ?
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 45.62, 0),
                            width: 98.84,
                            height: 93,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imagePath),
                                  fit: BoxFit.cover),
                              border: Border.all(color: const Color(0xFFFFDF00)),
                              borderRadius: BorderRadius.circular(70),
                            ),
                          )
                          :
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
                                onPressed: () async {
                                  XFile? file = await getImage();
                                  imagePath = await Auth().uploadImage(file);

                                  setState(() {

                                  });
                                },
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
                      handleSubmit();
                      // users.add({
                      //   'email': _ctrlEmail.text,
                      //   'password': _ctrlPassword.text,
                      //   'nama': _ctrlNama.text,
                      //   'profile': imagePath,
                      //   'genre' : [],
                      //   'language' : [],
                      // });
                      addUserToFirestore();
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
    );
  }

  // handleSubmit() async {
  //   if (!_formKey.currentState!.validate()) return;
  //   final email = _ctrlEmail.value.text;
  //   final password = _ctrlPassword.value.text;
  //   await Auth().regis(email, password);
  // }

  handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    final email = _ctrlEmail.value.text;
    final password = _ctrlPassword.value.text;

    bool registrationSuccess = await Auth().regis(email, password);

    if (registrationSuccess) {
      // Jika registrasi berhasil, arahkan pengguna ke halaman profil

      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const UserProfile();
        },
      ));
    } else {
      // Jika registrasi gagal, tampilkan AlertDialog

      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Registrasi Gagal"),
            content: const Text("Akun sudah didaftarkan."),
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

  Future<XFile?> getImage() async {
    return await ImagePicker().pickImage(source: ImageSource.gallery);
  }


  Future<void> addUserToFirestore() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    try {
      DocumentReference result = await users.add({
        'email': _ctrlEmail.text,
        'password': _ctrlPassword.text,
        'nama': _ctrlNama.text,
        'profile': imagePath,
        'genre': [],
        'language': [],
      });

      // ignore: use_build_context_synchronously
      Provider.of<UserIdProvider>(context, listen: false).userId = result.id;

      print('Added user with ID: ${result.id}');
    } catch (e) {
      print('Error adding user: $e');
    }
  }
}


