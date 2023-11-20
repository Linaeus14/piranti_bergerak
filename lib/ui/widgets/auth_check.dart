part of './widgets.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
