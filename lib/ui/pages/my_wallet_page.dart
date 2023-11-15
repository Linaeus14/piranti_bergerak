part of 'pages.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({Key? key}) : super(key: key);

  @override
  State<MyWalletPage> createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
  final ScrollController _scrollController = ScrollController();
  int?
      selectedTopUpIndex; // Variabel untuk menyimpan indeks top-up yang dipilih

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF393E46), // Warna latar belakang (Abu-abu)
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Tombol Back
            Container(
              color: const Color(0xFF393E46),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 25, left: 10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFDF00),
                ),
                width: 40,
                height: 40,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFF393E46),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),

            // Judul halaman
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                'In-Balance',
                style: TextStyle(
                  color: Color(0xFFFFDF00),
                  fontFamily: 'Raleway',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Kontainer "user wallet"
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: const Color(0xFFFFDF00), width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.yellow,
                                width: 2,
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset('assets/profile.jpg'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Wallet',
                              style: TextStyle(
                                color: Color(0xFFFFDF00),
                                fontFamily: 'Raleway',
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'Rp. 1,400,000',
                              style: TextStyle(
                                color: Color(0xFFFFDF00),
                                fontFamily: 'Roboto',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Container untuk daftar top-up
            SizedBox(
              height: 370,
              child: RawScrollbar(
                controller: _scrollController,
                thumbColor: const Color(0xFFFFDF00),
                thumbVisibility: true,
                trackVisibility: false,
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final formattedAmount = NumberFormat("#,##0", "id_ID")
                        .format(50000 * (index + 1));
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTopUpIndex = index;
                        });
                      },
                      child: Container(
                        color: selectedTopUpIndex == index
                            ? const Color(0xFFDAA520) // Warna terpilih
                            : Colors.white,
                        margin:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset('assets/topUp.png',
                                width: 50, height: 30),
                            const SizedBox(width: 10),
                            Text(
                              'Rp. $formattedAmount',
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Tombol "Confirm Top-Up"
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const TopUpSuccessPage();
                    },
                  ));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color(
                            0xFFDAA520); // Warna saat tombol ditekan
                      }
                      return const Color(0xFFFFDF00); // Warna default
                    },
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Container(
                  width: 270,
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  child: const Text(
                    'Confirm Top-Up',
                    style: TextStyle(
                      color: Color(0xFF393E46),
                      fontFamily: 'Raleway',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
