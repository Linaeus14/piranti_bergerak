part of 'pages.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393E46),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your account has \n been created!',
              style: TextStyle(
                color: Color(0xFFFFDF00),
                fontFamily: 'Raleway',
                fontSize: 26,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFFFFDF00),
                  width: 5,
                ),
                image: DecorationImage(
                  image: AssetImage('lib/assets/profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 80),
            Text(
              'Welcome,',
              style: TextStyle(
                color: Color(0xFFFFDF00),
                fontFamily: 'Raleway',
                fontSize: 24,
              ),
            ),
            Text(
              'Anatasya!',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Raleway',
                fontSize: 24,
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/order_success');
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
                  'Confirm',
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
                Navigator.pushNamed(context, '/order_success');
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
                  'Back',
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
