part of 'widgets.dart';

class SeatAppbar extends StatelessWidget {
  const SeatAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          width: 53,
          height: 80,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/image2.png"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 29, bottom: 29),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Suzume",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xFFFFDF00),
                    fontFamily: "Raleway",
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "Animation - Japan",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Raleway",
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                "Theatre A - 22.00",
                textAlign: TextAlign.left,
                style: TextStyle(
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
