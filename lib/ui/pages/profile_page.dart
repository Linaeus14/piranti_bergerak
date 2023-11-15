part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final int _index = 2;
  int? _selectedMenuIndex; // Variabel untuk menyimpan indeks menu yang dipilih

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

          // Daftar menu profile
          Container(
            color: const Color(0xFF393E46),
            child: Column(
              children: [
                const Divider(
                    height: 0,
                    color: Color(0xFF888888),
                    thickness: 0.2), // Garis atas sebelum "Edit Profile" (dengan ketebalan 2)
                MenuItem(
                  Icons.person,
                  'Edit Profile',
                  isSelected: _selectedMenuIndex == 0,
                  onPressed: () {
                    _selectMenu(0);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const EditProfilePage();
                      },
                    ));
                  },
                ),
                const Divider(
                    height: 0,
                    color: Color(0xFF888888),
                    thickness: 0.2), // Garis bawah
                MenuItem(
                  Icons.account_balance_wallet,
                  'Wallet',
                  isSelected: _selectedMenuIndex == 1,
                  onPressed: () {
                    _selectMenu(1);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const MyWalletPage();
                      },
                    ));
                  },
                ),
                const Divider(
                    height: 0,
                    color: Color(0xFF888888),
                    thickness: 0.2), // Garis bawah
                MenuItem(
                  Icons.star,
                  'Rate Flutix',
                  isSelected: _selectedMenuIndex == 2,
                  onPressed: () {
                    _selectMenu(2);
                  },
                ),
                const Divider(
                    height: 0,
                    color: Color(0xFF888888),
                    thickness: 0.2), // Garis bawah
                MenuItem(
                  Icons.help,
                  'Help',
                  isSelected: _selectedMenuIndex == 3,
                  onPressed: () {
                    _selectMenu(3);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(index: _index),
    );
  }

  // Fungsi untuk menangani pemilihan menu
  void _selectMenu(int index) {
    setState(() {
      _selectedMenuIndex = index;
    });
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const MenuItem(this.icon, this.label,
      {Key? key, required this.isSelected, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: isSelected ? const Color(0xFFDAA520) : null,
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: isSelected ? Colors.black : const Color(0xFFFFDF00),
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
      ),
    );
  }
}
