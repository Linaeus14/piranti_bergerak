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
    UserData userData = Provider.of<UserData>(context, listen: false);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF393E46),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(0xFFFFDF00),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(userData.data.profile!),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userData.data.nama!,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                Text(
                  "Rp. ${NumberFormat("#,##0", "id_ID").format(userData.data.wallet)}",
                  style: const TextStyle(
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
      bottomNavigationBar: BottomNav(index: _index),
    );
  }
}
