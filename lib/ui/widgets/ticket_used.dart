part of 'widgets.dart';

class TicketUsed extends StatelessWidget {
    final Size screenSize; 

  const TicketUsed({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.42,
      height: 71.62,
      child: Stack(
        children: [
          Container(
            width: 350.42,
            height: 71.03,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(2, 0),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 60,
              height: 65,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('film2.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(2, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 62.22,
            top: 16.39,
            child: SizedBox(
              width: 271.71,
              height: 39.78,
              child: Stack(
                children: [
                  Text(
                    'STAR WARS : THE FORCE AWAKENS ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFDF00),
                      fontSize: 11,
                    ),
                  ),
                  Positioned(
                    left: 3,
                    top: 30.78,
                    child: Text(
                      'Lorem Cinema',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFFDF00),
                        fontSize: 8,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 3,
                    top: 20,
                    child: Text(
                      'Day 30, 22:00',
                      style: TextStyle(
                        color: Color(0xFFFFDF00),
                        fontSize: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
