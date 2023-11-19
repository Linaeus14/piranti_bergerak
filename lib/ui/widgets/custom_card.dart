part of './widgets.dart';

class CustomCard extends StatelessWidget {
  final Cast cast;

  const CustomCard({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // Add your card properties here
      child: Column(
        children: [
          // Check if cast.picture is not null before using it
          if (cast.picture != null)
            Image.network(
              cast.picture!,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
          Text(
            // Check if cast.name is not null before using it
            cast.name ?? 'Unknown',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
