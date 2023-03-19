import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String user;
  final String details;
  final String comment;
  const Review(
      {super.key,
      required this.pathImage,
      required this.user,
      required this.details,
      required this.comment});

  @override
  Widget build(BuildContext context) {
//widget para estrellas con relleno
    final star = Container(
      margin: const EdgeInsets.only(
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Colors.blueGrey,
      ),
    );

    //widget para la fotografia del usuario
    final profilePic = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20.0,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

//widget para nombre del usuario
    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        user,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(fontSize: 17.0, fontWeight: FontWeight.bold),
      ),
    );

    //widget para la informacion del usuario
    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(fontSize: 14.0, color: Colors.black54),
      ),
    );
    //widget para el comentario de usuario
    final userComments = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
          fontSize: 14.0,
        ),
      ),
    );

    //wdigeet para username, info y demas
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [userInfo, star, star, star, star, star],
        ),
        userComments
      ],
    );
    return Row(children: [
      profilePic,
      userDetails,
    ]);
  }
}
