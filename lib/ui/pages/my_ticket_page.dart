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
        toolbarHeight: 80,
        title: const HomeAppbarTitle(),
        backgroundColor: const Color(0xFFFFDF00),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
              child: isUsedButtonActive
                  ? TicketList(userData: userData, screenSize: screenSize)
                  : TicketList(userData: userData, screenSize: screenSize)),
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

class TicketList extends StatelessWidget {
  const TicketList({
    super.key,
    required this.userData,
    required this.screenSize,
  });

  final UserData userData;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<TicketData>(context, listen: false)
          .getTicketsFromFirestore(userData.userId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Data is still loading
          return Padding(
            padding: EdgeInsets.fromLTRB(
                screenSize.width / 2.15, screenSize.height / 2.9, screenSize.width / 3, screenSize.height / 2.9),
            child: const CircularProgressIndicator(
              color: Color(0xFFFFDF00),
            ),
          );
        } else if (snapshot.hasError) {
          // Error occurred
          debugPrint("Load failed: ${snapshot.error}");
          return Container(
            alignment: Alignment.center,
            child: const Text(
              'Failed to load data. Please try again later.',
              style: TextStyle(color: Colors.red),
            ),
          );
        } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
          // No data available
          return Container(
            alignment: Alignment.center,
            child: const Text(
              'No Ticket available.',
              style: TextStyle(color: Colors.grey),
            ),
          );
        } else {
          // Data is available
          List<Ticket> tickets = snapshot.data as List<Ticket>;
          return ListView.builder(
              itemCount: tickets.length,
              itemBuilder: (context, index) {
                return TicketTile(
                    width: screenSize.width,
                    height: screenSize.height,
                    ticket: tickets[index],
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return TicketDetailPage(ticket: tickets[index]);
                        },
                      ));
                    });
              });
        }
      },
    );
  }
}
