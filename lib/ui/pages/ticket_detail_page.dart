part of './pages.dart';

class TicketDetailPage extends StatelessWidget {
  final Ticket ticket;
  const TicketDetailPage({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF393E46),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 330,
                      child: Image.network(
                        ticket.film.backdropUrl!,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.width,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black54,
                              Color(0xFF393E46),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 10,

                      // Tombol Back
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const ShapeDecoration(
                          color: Color.fromARGB(120, 255, 221, 0),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color(0xFF393E46),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          iconSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                // Kontainer "movie detail"
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFF393E46),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          ticket.film.title!,
                          style: const TextStyle(
                            color: Color(0xFFFFDF00),
                            fontFamily: 'Raleway',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Center(
                          child: Text(
                            ticket.film.genres!.join(", "),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                size: 23,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 23,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 23,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 23,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 23,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '4/5',
                                style: TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        color: const Color(0xFFFFDF00),
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cinema',
                                style: TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Date & Time',
                                style: TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Seat(s)',
                                style: TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                ticket.cinema,
                                style: const TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                ticket.time,
                                style: const TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                ticket.seats.join(", "),
                                style: const TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFF393E46),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 0),
                        color: const Color(0xFFFFDF00),
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Name',
                                style: TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                Provider.of<UserData>(context).data!.nama!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                                height: 10,
                              ),
                              const Text(
                                'Price',
                                style: TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rp. ${NumberFormat("#,##0", "id_ID").format(ticket.harga)}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 119,
                                height: 163,
                                child: Icon(
                                  Icons.qr_code,
                                  size: 119,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order ID ',
                                style: TextStyle(
                                  color: Color(0xFFFFDF00),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                ticket.id,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
