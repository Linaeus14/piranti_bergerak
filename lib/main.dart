import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:piranti_bergerak/firebase_options.dart';
import 'package:piranti_bergerak/services/services.dart';
import 'package:piranti_bergerak/ui/pages/checkout_page.dart';
import 'package:piranti_bergerak/ui/pages/pages.dart';
import 'package:piranti_bergerak/ui/pages/ticket_detail_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "pirantibergerak",
    options:  DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage()
      // home: Scaffold(
      //     body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           foregroundColor: Colors.white,
      //           backgroundColor: Colors.red, // foreground
      //         ),
      //         onPressed: () async {
      //           await AutServices.signUp("tito2@gmail.com", "111111",
      //               "tito2", ["Action", "Drama"], "English");
      //         },
      //         child: const Text('Sign Up'),
      //       ),
      //       ElevatedButton(
      //         style: ElevatedButton.styleFrom(
      //           foregroundColor: Colors.white,
      //           backgroundColor:
      //               const Color.fromARGB(255, 52, 123, 255), // foreground
      //         ),
      //         onPressed: () async {
      //           await AutServices.signIn("tito2@gmail.com", "111111");
      //         },
      //         child: const Text('Sign In'),
      //       )
      //     ],
      //   ),
      // )),
    );
  }
}
