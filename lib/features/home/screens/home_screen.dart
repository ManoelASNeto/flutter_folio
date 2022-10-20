// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../about/about_screen.dart';
import '../../widgets/divider_custom.dart';
import 'expirience_screen.dart';
import 'portfolio_screen.dart';

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
                Color.fromARGB(255, 40, 48, 72),
                Color.fromARGB(255, 133, 147, 152)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Olá!\nSeja bem Vindo ao meu PortFólio Flutter',
                    style: GoogleFonts.lemonada(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'ManoelAmancio.',
                    style: GoogleFonts.ballet(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )
                ],
              ),
              const DividerCustom(),
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
                      openUrl(
                          'https://www.linkedin.com/in/manoel-am%C3%A2ncio/');
                    },
                    icon: const Icon(
                      MdiIcons.linkedin,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {
                      openUrl('https://github.com/ManoelASNeto');
                    },
                    icon: const Icon(
                      MdiIcons.github,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {
                      openUrl('https://www.instagram.com/manoel_amanciosilva/');
                    },
                    icon: const Icon(
                      MdiIcons.instagram,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 205),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 15,
                        shadowColor: Colors.lightBlueAccent,
                        padding: const EdgeInsets.all(22),
                      ),
                      onPressed: () {
                        openUrl(
                            'https://docs.google.com/document/d/13Whwh3sD-5jx4PzpJ2xBqOA6AvTtV6Ur/edit');
                      },
                      child: Text(
                        'Baixar Cv',
                        style: GoogleFonts.elMessiri(
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset(
                      'images/desenvolvedor.png',
                      scale: 1,
                    ),
                  )
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
              const DividerCustom(),
              const SizedBox(
                height: 10,
              ),
              const AboutScreen(),
              const DividerCustom(),
              const PortFolioScreen(),
              const DividerCustom(),
              const SizedBox(
                height: 10,
              ),
              const ExperienceScreen(),
            ],
          ),
        ),
      ),
    );
  }

  void openUrl(String url) {
    html.window.open(
      url,
      "_blank",
    );
  }
}
