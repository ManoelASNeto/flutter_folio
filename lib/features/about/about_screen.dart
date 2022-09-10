import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Desenvolvedor mobile Flutter a dois anos.\n',
      style: GoogleFonts.lemonada(
          textStyle: const TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}
