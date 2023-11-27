part of './widgets.dart';

class TicketTile extends StatefulWidget {
  const TicketTile(
      {super.key,
      required double width,
      required double height,
      required this.ticket,
      required this.onPressed,
      this.leading = false})
      : _width = width,
        _height = height;

  final double _width;
  final double _height;
  final Ticket ticket;
  final VoidCallback onPressed;
  final bool leading;

  @override
  State<TicketTile> createState() => TicketTileState();
}

class TicketTileState extends State<TicketTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Colors.black45,
      child: ListTile(
        onTap: () => widget.onPressed(),
        tileColor: const Color(0xff393e46),
        contentPadding: const EdgeInsets.all(8.0),
        leading: Container(
          width: 2 * widget._width / 10,
          alignment: Alignment.center,
          child: Image.network(
            widget.ticket.film.backdropUrl!,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          widget.ticket.film.title!,
          style: const TextStyle(
            color: Color(0xFFFFDF00),
            fontSize: 11,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.ticket.time,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.ticket.cinema,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
            )
          ],
        ),
        trailing: null,
      ),
    );
  }
}
