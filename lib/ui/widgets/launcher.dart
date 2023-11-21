part of './widgets.dart';

class LaunchApp extends StatelessWidget {
  const LaunchApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: checkFirstLaunch(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return const Center(child: Text("Failed to load"));
        } else {
          return snapshot.data!;
        }
      },
    );
  }

  Future<Widget> checkFirstLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLaunch = prefs.getBool('firstLaunch') ?? true;

    if (isFirstLaunch) {
      await prefs.setBool('firstLaunch', false);
      return const SplashPage();
    } else {
      return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen(); // Loading indicator if authentication state is still being determined
          } else if (snapshot.hasData) {
            return const Home(); // User is logged in, navigate to the home screen
          } else {
            return const SignIn(); // User is not logged in, navigate to the sign-in screen
          }
        },
      );
    }
  }
}

