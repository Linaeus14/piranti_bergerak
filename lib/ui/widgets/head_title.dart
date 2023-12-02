part of 'widgets.dart';

class Headtitle extends StatelessWidget {
  const Headtitle({super.key, required String text, required double size})
      : _text = text,
        _size = size;

  final String _text;
  final double _size;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        color: const Color(0xFFFFDF00),
        fontFamily: "Raleway",
        fontSize: _size,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}
