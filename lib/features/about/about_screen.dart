import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Desenvolvedor mobile Flutter a dois anos.\nA minha maior inspiração para mergulhar de cabeça no mundo do desenvolvimento foi o meu irmão\ncom ele aprendi a dar meus primeiros passos ',
          style: GoogleFonts.lemonada(
            textStyle: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Text(
          'Minhas fontes para estudo foram Udemy e Startto.dev\n Adiquiri muito conhecimentos com as duas plataformas e os diversos professores como: Daniel Ciolfi, Fernando Martins, Jacob Moura ',
          style: GoogleFonts.lemonada(
            textStyle: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
