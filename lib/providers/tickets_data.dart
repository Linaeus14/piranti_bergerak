part of './providers.dart';

class TicketData with ChangeNotifier {
  Ticket ticket = Ticket();
  late List<Ticket> ticketList;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addToFirestore(
      String id,
      String title,
      String image,
      String cinema,
      String time,
      List<String> genre,
      double score,
      List<String> seats,
      int price) async {
    try {
      CollectionReference users = _firestore.collection('tickets');
      DocumentReference documentReference = users.doc();

      Map<String, dynamic> data = {
        'id': id,
        'film': title,
        'genre': genre,
        'score': score,
        'cinema': cinema,
        'time': time,
        'image': image,
        'seats': seats,
        'price': price
      };

      await documentReference.set(data);
      debugPrint('Added user with ID: $id');
    } catch (e) {
      debugPrint('Error adding user: $e');
    }
  }

  Future<List<Ticket>> getTicketsFromFirestore(String id) async {
    try {
      CollectionReference tickets = _firestore.collection('tickets');
      QuerySnapshot querySnapshot =
          await tickets.where('id', isEqualTo: id).get();

      List<Ticket> ticketList = [];

      if (querySnapshot.docs.isNotEmpty) {
        for (QueryDocumentSnapshot doc in querySnapshot.docs) {
          Map<String, dynamic> ticketData = doc.data() as Map<String, dynamic>;

          Film film = Film(
            title: ticketData['film'] ?? 'Unknown',
            genres: List<String>.from(ticketData['genre'] ?? []),
            backdropUrl: ticketData['image'] ?? '',
            rating: (ticketData['score'] as num?)?.toDouble() ?? 0.0,
          );

          Ticket ticket = Ticket()
            ..id = doc.id
            ..film = film
            ..cinema = ticketData['cinema'] ?? 'Failed to load'
            ..time = ticketData['time'] ?? 'Failed to load'
            ..seats = List<String>.from(ticketData['seats'] ?? [])
            ..harga = ticketData['price'] ?? 0;

          ticketList.add(ticket);
        }
      }

      return ticketList;
    } catch (e) {
      debugPrint('Error getting tickets: $e');
      return [];
    }
  }
}
