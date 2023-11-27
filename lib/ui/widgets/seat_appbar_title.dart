part of 'widgets.dart';

class SeatAppbar extends StatelessWidget {
  const SeatAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Ticket ticket = Provider.of<TicketData>(context, listen: false).ticket;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          width: 53,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(ticket.film.thumbnailUrl!),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 29, bottom: 29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ticket.film.title!,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Color(0xFFFFDF00),
                    fontFamily: "Raleway",
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  ticket.film.genres!.join(", "),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Raleway",
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                "${ticket.cinema} - ${ticket.time}",
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Raleway",
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }
}
