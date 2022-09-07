import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image(
              image: const NetworkImage(
                  'https://miro.medium.com/max/1400/0*CZIHfc84uj0rrhu-'),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 125,
                  ),
                  Text(
                    'Minhas redes sociais para um melhor contato!\n LinkedIn e GitHub',
                    style: GoogleFonts.elMessiri(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      html.window.open(
                          'https://www.linkedin.com/in/manoel-am%C3%A2ncio/',
                          "_blank");
                    },
                    icon: const Icon(
                      MdiIcons.linkedin,
                      size: 55,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  IconButton(
                    onPressed: () {
                      html.window
                          .open('https://github.com/ManoelASNeto', "_blank");
                    },
                    icon: const Icon(
                      MdiIcons.github,
                      size: 55,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
