// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

part of 'pages.dart';

class MovieDetailPage extends StatefulWidget {
  final Film film;

  const MovieDetailPage({Key? key, required this.film}) : super(key: key);

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Access film details from the widget parameter
    String title = widget.film.title ?? "";
    List<String> genre = widget.film.genres ?? [];
    String desc = widget.film.desc ?? "";

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight:
                height * 0.36, // Adjust based on your UI requirements
            pinned: true,
            flexibleSpace: Stack(
              children: [
                Image.network(
                  widget.film.backdropUrl ?? '',
                  fit: BoxFit.cover,
                  width: width,
                ),
                Ink(
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
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: height * 0.05,
                    width: width,
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
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: height * 0.02),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          color: Color(0xFFFFDF00),
                          fontFamily: 'Raleway',
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        genre.join(', '),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < 5; i++)
                            Icon(
                              Icons.star,
                              color: i < (widget.film.rating ?? 0).round()
                                  ? Color(0xFFFFDF00)
                                  : Colors.grey,
                            ),
                          Text(
                            '\t\t${(widget.film.rating ?? 0).round()}',
                            style: TextStyle(
                              color: Color(0xFFFFDF00),
                              fontSize: width * 0.05,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Storyline',
                        style: TextStyle(
                          color: Color(0xFFFFDF00),
                          fontFamily: 'Raleway',
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        desc,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Cast',
                        style: TextStyle(
                          color: Color(0xFFFFDF00),
                          fontFamily: 'Raleway',
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                FutureBuilder<List<Cast>>(
                  future: Api.getCastList(widget.film.id.toString()),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // While data is being fetched, show a loading indicator
                      return Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFFFFDF00),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      // If there is an error, display an error message
                      return Center(
                        child: Text('Error: ${snapshot.error}'),
                      );
                    } else {
                      // If data is successfully fetched, build the UI with the cast information
                      List<Cast> cast = snapshot.data ?? [];

                      return SizedBox(
                        height: height * 0.25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: cast.length,
                          itemBuilder: (context, index) {
                            return CustomCard(cast: cast[index]);
                          },
                        ),
                      );
                    }
                  },
                ),
                SizedBox(height: height * 0.02),
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
                    width: width * 0.7,
                    padding: EdgeInsets.all(height * 0.015),
                    margin: EdgeInsets.symmetric(horizontal: width * 0.15),
                    alignment: Alignment.center,
                    child: Text(
                      'Book',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Raleway',
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
