import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplicacion5b/screen/button_navigate.dart';

class DescriptionPlaceScreen extends StatelessWidget {
  final String descriptionPlace;
  final String namePlace;
  final int stars;
  const DescriptionPlaceScreen(
      {super.key,
      required this.descriptionPlace,
      required this.namePlace,
      required this.stars});

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle =
        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);

    // const descriptionText = *poner control shift p para poner un lorem
    //luego presionar alt z para que lo acomode, si no deja entonces
    //irse a view y a wros wrap
    final star = Container(
      margin: const EdgeInsets.only(
        top: 323,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Colors.blueGrey,
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: GoogleFonts.comicNeue(
            textStyle: const TextStyle(
          fontSize: 16,
        )),
      ),
    );

    final titleAndStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: const Text(
            "Duwili ella",
            style: titleStyle,
            textAlign: TextAlign.left,
          ),
        ),
        star,
        star,
        star,
        star,
      ],
    );
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      titleAndStars,
      description,
      const ButtonNavigate(buttonText: 'Mas informacion'),
    ]);
  }
}
