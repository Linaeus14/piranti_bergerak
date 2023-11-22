part of './models.dart';

class Ticket {
  Film? film;
  String? cinema;
  String? time;
  List<String>? seats;
  int? harga;

  Ticket(
      {required this.film,
      required this.cinema,
      required this.time,
      required this.seats,
      required this.harga});
}
