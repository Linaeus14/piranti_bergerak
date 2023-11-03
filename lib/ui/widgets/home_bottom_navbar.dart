part of 'widgets.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required index,
  }) : _index = index;
  
  final int _index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFFFFDF00),
      unselectedItemColor: Colors.black38,
      selectedItemColor: Colors.black87,
      currentIndex: _index,
      // onTap: ,
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
