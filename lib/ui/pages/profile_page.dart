part of 'pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF393E46),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFFDF00),
                        ),
                        child: const CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/profile.jpg'),
                        ),
                      ),
                      const SizedBox(height: 210),
                      const Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Text(
                          'Anatasya',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF393E46),
            child: const Column(
              children: [
                Divider(height: 0, color: Color(0xFF888888), thickness: 0.2), // Garis atas sebelum "Edit Profile" (dengan ketebalan 2)
                MenuItem(Icons.person, 'Edit Profile'),
                Divider(height: 0, color: Color(0xFF888888),thickness: 0.2), // Garis bawah
                MenuItem(Icons.account_balance_wallet, 'Wallet'),
                Divider(height: 0, color: Color(0xFF888888),thickness: 0.2), // Garis bawah
                MenuItem(Icons.star, 'Rate Flutix'),
                Divider(height: 0, color: Color(0xFF888888),thickness: 0.2), // Garis bawah
                MenuItem(Icons.help, 'Help'),
              ],
            ),
          ),
          BottomNavigationBar(
            backgroundColor: const Color(0xFFFFDF00),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_number, color: Color(0xFF393E46)),
                label: 'Tiket',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color(0xFF393E46)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Color(0xFFDAA520)),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuItem(this.icon, this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            icon,
            size: 40,
            color: const Color(0xFFFFDF00),
          ),
          const SizedBox(width: 16),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }
}
