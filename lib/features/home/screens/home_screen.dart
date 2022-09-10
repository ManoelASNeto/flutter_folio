import 'package:flutter/material.dart';
import 'package:flutter_folio/features/about/about_screen.dart';
import 'package:flutter_folio/features/home/screens/portfolio_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.blue,
                Colors.lightBlue,
                Colors.lightBlueAccent,
                Colors.lightBlueAccent,
                Colors.lightBlue,
                Colors.blue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 50,
            ),
            child: ListView(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Olá!\nSeja bem Vindo ao meu PortFólio Flutter',
                  style: GoogleFonts.lemonada(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                  endIndent: 50,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Me chamo Manoel Amâncio.\nE sou Desenvolvedor Mobile Flutter',
                  style: GoogleFonts.elMessiri(
                    textStyle: const TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        html.window.open(
                            'https://www.linkedin.com/in/manoel-am%C3%A2ncio/',
                            "_blank");
                      },
                      icon: const Icon(
                        MdiIcons.linkedin,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        MdiIcons.github,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        MdiIcons.instagram,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 205),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 5,
                          shadowColor: Colors.amber,
                          padding: const EdgeInsets.all(22),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Baixar Cv',
                          style: GoogleFonts.elMessiri(
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                Text(
                  'Sobre',
                  style: GoogleFonts.lemonada(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                  endIndent: 50,
                ),
                const SizedBox(
                  height: 10,
                ),
                const AboutScreen(),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                  endIndent: 50,
                ),
                const PortFolioScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
