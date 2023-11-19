import 'package:flutter/material.dart';
import 'package:piranti_bergerak/firebase_options.dart';
import 'package:piranti_bergerak/providers/providers.dart';
import 'package:piranti_bergerak/ui/pages/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserIdProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xff393e46)),
        debugShowCheckedModeBanner: false,
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const SplashPage();
            } else {
              return const SignIn();
            }
          },
        ),
      ),
    );
  }
}
