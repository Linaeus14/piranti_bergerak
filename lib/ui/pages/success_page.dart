// ignore_for_file: prefer_const_constructors

part of 'pages.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  late ImageProvider _currentImage;
  late String _currentNameUser;

  @override
  void initState() {
    super.initState();
    _loadProfilePath();
    _loadName();
    _currentImage = AssetImage("assets/Profile.png");
    _currentNameUser = 'User';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393E46),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your account preferance has \n been saved!',
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
                  image: _currentImage,
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
              '$_currentNameUser!',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Raleway',
                fontSize: 24,
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () async {
                Provider.of<UserData>(context, listen: false).getData();
                if (!context.mounted) return;
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return const Home();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFDF00),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Container(
                width: 300,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return const SignIn();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF393E46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Color(0xFFFFDF00), width: 1),
                ),
              ),
              child: Container(
                width: 300,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 10),
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

  Future<void> _loadProfilePath() async {
    try {
      String userId = Provider.of<UserData>(context, listen: false).userId;
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      // Mendapatkan path gambar profil dari dokumen Firestore
      final profilePath = userDoc.data()?['profile'];

      if (profilePath != null && profilePath.isNotEmpty) {
        setState(() {
          _currentImage = NetworkImage(profilePath);
        });
      }
    } catch (e) {
      debugPrint('Error loading profile path: $e');
    }
  }

  Future<void> _loadName() async {
    try {
      String userId = Provider.of<UserData>(context, listen: false).userId;
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      // Mendapatkan path gambar profil dari dokumen Firestore
      final name = userDoc.data()?['nama'];

      if (name != null && name.isNotEmpty) {
        setState(() {
          _currentNameUser = name;
        });
      }
    } catch (e) {
      debugPrint('Error loading profile path: $e');
    }
  }
}
