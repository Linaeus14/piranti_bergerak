import 'package:flutix/firebase_options.dart';
import 'package:flutix/providers/providers.dart';
import 'package:flutix/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
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
        ChangeNotifierProvider(create: (context) => UserData()),
        ChangeNotifierProvider(create: (context) => TicketData()),
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xff393e46)),
        debugShowCheckedModeBanner: false,
        home: const LaunchApp(),
      ),
    );
  }
}
