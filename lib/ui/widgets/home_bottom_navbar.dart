part of 'widgets.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
    required index,
  }) : _index = index;
  final int _index;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFFFFDF00),
      unselectedItemColor: Colors.black38,
      selectedItemColor: Colors.black87,
      currentIndex: widget._index,
      // onTap: ,
      onTap: (int tappedIndex) {

        setState(() {
          // Tambahkan logika atau tindakan sesuai kebutuhan
          switch (tappedIndex) {
            case 0:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return const TicketPage();
                },
              ));
              break;
            case 1:
              // Tindakan saat ikon Home diklik
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return const Home();
                },
              ));
              break;
            case 2:
              // Tindakan saat ikon Profile diklik
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return const ProfilePage();
                },
              ));
              break;
          }
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.confirmation_number_sharp),
          label: "Ticket",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        )
      ],
    );
  }
}
