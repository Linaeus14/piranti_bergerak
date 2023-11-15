part of 'pages.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  final int _index = 0;
  bool isUsedButtonActive = true;

  void toggleButtons() {
    setState(() {
      isUsedButtonActive = !isUsedButtonActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF393E46),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(0xFFFFDF00),
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile_pic.png'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anatasya',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                Text(
                  'IDR 999.000.00',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(left: 10),
              children: List.generate(
                12,
                (index) {
                  if (isUsedButtonActive) {
                    return GestureDetector(
                      onTap: () {},
                      child: TicketUpcoming(screenSize: screenSize),
                      // onVerticalDragUpdate: (details) {},
                    );
                  } else {
                    return GestureDetector(
                      onTap: () {},
                      child: TicketUsed(screenSize: screenSize),
                      // onVerticalDragUpdate: (details) {},
                    );
                  }
                },
              ),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isUsedButtonActive) {
                      toggleButtons();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(196, 50),
                    backgroundColor: isUsedButtonActive
                        ? const Color(0xFFFFDF00)
                        : const Color(0xFFFFDF00),
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                  child: Text(
                    'Upcoming',
                    style: TextStyle(
                      color: isUsedButtonActive ? Colors.black : Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (isUsedButtonActive) {
                      toggleButtons();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(196, 50),
                    backgroundColor: !isUsedButtonActive
                        ? const Color(0xFFFFDF00)
                        : const Color(0xFFFFDF00),
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                  child: Text(
                    'Used',
                    style: TextStyle(
                      color: !isUsedButtonActive ? Colors.black : Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: const Color(0xFFFFDF00),
      //   unselectedItemColor: const Color(0xFF393E46),
      //   selectedItemColor: const Color(0xFFDAA520),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.confirmation_number_sharp),
      //       label: "Ticket",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomNav(index: _index),
    );
  }
}
