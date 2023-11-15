// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

part of 'pages.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Map> actors = [
      {"name": "Daisy Ridley"},
      {"name": "Boyega"},
      {"name": "Oscar Isaac"},
      {"name": "Harrison"},
      {"name": " Adam"},
      {"name": "Simon Pegg"},
    ];
    return Scaffold(
      backgroundColor: Color(0xFF393E46),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 330,
                  child: Image.asset(
                    'assets/starwar.png',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Color(0xFFFFDF00),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return const Home();
                          },
                        ));
                      },
                      iconSize: 40,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black, 
                          Color(0xFF393E46), 
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'STAR WARS : THE FORCE AWAKENS',
                      style: TextStyle(
                        color: Color(0xFFFFDF00),
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Action, Adventure, Sci-Fi - English',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < 4; i++)
                          Icon(
                            Icons.star,
                            color: Color(0xFFFFDF00),
                          ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        Text(
                          '\t\t4/5',
                          style: TextStyle(
                            color: Color(0xFFFFDF00),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Storyline',
                      style: TextStyle(
                        color: Color(0xFFFFDF00),
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'As a new threat to the galaxy rises, Rey, a desert scavenger, and Finn, an ex-stormtrooper, must join Han Solo and Chewbacca to search for the one hope of restoring peace.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: Text(
                      'Cast',
                      style: TextStyle(
                        color: Color(0xFFFFDF00),
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: actors
                          .map((e) => CustomCard(
                              width: width,
                              height: height,
                              index: actors.indexOf(e),
                              name: e['name']))
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return const PlaceAndTimePick();
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
                  'Book',
                  style: TextStyle(
                    color: Colors.black,
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

class CustomCard extends StatelessWidget {
  final double width;
  final double height;
  final int index;
  final String name;

  CustomCard(
      {required this.width,
      required this.height,
      required this.index,
      this.name = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 10, 5, 25),
      width: 70,
      height: 90,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/gambar$index.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 80,
            height: 17,
            color: Color.fromRGBO(255, 255, 255, 0.5),
            alignment: Alignment.center,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
