import 'package:flutter/material.dart';
import 'package:flutter_folio/features/about/about_screen.dart';
import 'package:flutter_folio/features/home/screens/contact_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_folio/features/home/screens/portfolio_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: const [
            ScreenOne(),
            PortFolioScreen(),
            AboutScreen(),
            ContactScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        containerHeight: 40,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        backgroundColor: Colors.grey[50],
        selectedIndex: _currentIndex,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: const Icon(
                Icons.home,
              ),
              title: Text(
                'Inicio',
                style: GoogleFonts.elMessiri(
                  textStyle: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              textAlign: TextAlign.center),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.folder,
            ),
            title: Text(
              'Portfólio',
              style: GoogleFonts.elMessiri(
                textStyle: const TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.info,
            ),
            title: Text(
              'Sobre',
              style: GoogleFonts.elMessiri(
                textStyle: const TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.call,
              color: Colors.blueAccent,
              size: 20,
            ),
            title: Text(
              'Contato',
              style: GoogleFonts.elMessiri(
                textStyle: const TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ],
        onItemSelected: (index) => setState(
          () {
            _currentIndex = index;
            _pageController.jumpToPage(
              index,
            );
          },
        ),
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueAccent,
            Colors.blue,
            Colors.lightBlue,
            Colors.lightBlueAccent,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text(
              'Flutter é um framework cross-platform\npara se escrever apps Android, iOS, Desktop e rodar com uma performance nativa.',
              style: GoogleFonts.elMessiri(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
