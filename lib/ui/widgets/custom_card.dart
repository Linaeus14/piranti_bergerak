part of './widgets.dart';

class CustomCard extends StatelessWidget {
  final Cast cast;

  const CustomCard({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
    return Card(
      color: const Color(0xFFFFDF00),
      // Add your card properties here
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Check if cast.picture is not null before using it
          cast.picture != null
              ? Image.network(
                  width: width * 0.3,
                  height: height * 0.21,
                  cast.picture!,
                  fit: BoxFit.fill,
                )
              : SizedBox(
                  width: width * 0.3,
                  height: height * 0.21,
                  child: const Icon(Icons.person_3_rounded)),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: width * 0.3,
            height: height * 0.05,
            child: Text(
              // Check if cast.name is not null before using it
              cast.name ?? 'Unknown',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
