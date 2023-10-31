part of 'widgets.dart';

class HomeAppbarTitle extends StatelessWidget {
  const HomeAppbarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF000000),
                width: 1,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              image: const DecorationImage(
                  image: AssetImage("assets/profile_pic.png"),
                  fit: BoxFit.cover)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "Anatasya",
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: "Inter",
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "IDR 999.000.00",
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: "Roboto",
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
