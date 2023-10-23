part of 'pages.dart';

class TopUpSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF393E46),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You have Successfully',
                    style: TextStyle(
                      color: Color(0xFFFFDF00),
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'top-up your balance',
                    style: TextStyle(
                      color: Color(0xFFFFDF00),
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50), // Add a top margin of 50
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 52,
                          vertical: 8), // Maintain the existing margin
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: const Color(0xFFFFDF00), width: 2),
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Container(
                              width:
                                  45, // Increase the size slightly for the border
                              height: 45,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors
                                      .yellow, // Border color set to yellow
                                  width: 2, // Border width
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
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            // Divider sebagai garis pembatas
            color: Colors.white,
            height: 2,
            thickness: 1,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 165),
              color: const Color(0xFF393E46),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFDF00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Container(
                      width: 270,
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: const Text(
                        'My Wallet',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Raleway',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 3), // jarak button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF393E46),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Color(0xFFFFDF00), width: 2),
                      ),
                    ),
                    child: Container(
                      width: 270,
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          color: Color(0xFFFFDF00),
                          fontFamily: 'Raleway',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
