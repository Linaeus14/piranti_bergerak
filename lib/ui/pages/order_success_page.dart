part of 'pages.dart';

class OrderSuccessPage extends StatefulWidget {
  const OrderSuccessPage({super.key});

  @override
  State<OrderSuccessPage> createState() => _OrderSuccessPageState();
}

class _OrderSuccessPageState extends State<OrderSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393E46),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have succesfuly\nbought the ticket!',
              style: TextStyle(
                color: Color(0xFFFFDF00),
                fontFamily: 'Raleway',
                fontSize: 26,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70),
            Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xFFFFDF00),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15), // Radius sudut kiri atas
                      topRight: Radius.circular(15), // Radius sudut kanan atas
                    ),
                    child: Image.asset(
                      'lib/assets/film2.jpg',
                      fit: BoxFit.cover,
                      height: 200, // Ubah sesuai kebutuhan
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 30, // Geser teks ke atas sejauh 20px
                    left: 0,
                    right: 0,
                    child: Text(
                      'STAR WARS : THE \n FORCE AWAKENS',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Raleway',
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/success');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFDF00), // Warna kuning (FFDF00)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Container(
                width: 270,
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                child: Text(
                  'My Ticket',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 3),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/success');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF393E46), // Warna abu-abu (393E46)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Color(0xFFFFDF00), width: 2),
                ),
              ),
              child: Container(
                width: 270,
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                child: Text(
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
    );
  }
}
