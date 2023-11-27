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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Check if cast.picture is not null before using it
          cast.picture != null
              ? Image.network(
                  width: width * 0.2,
                  height: height * 0.15,
                  cast.picture!,
                  fit: BoxFit.cover,
                )
              : SizedBox(
                  width: width * 0.3,
                  height: height * 0.15,
                  child: const Icon(Icons.person_3_rounded)),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: width * 0.2,
            height: height * 0.07,
            child: Text(
              // Check if cast.name is not null before using it
              cast.name ?? 'Unknown',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
