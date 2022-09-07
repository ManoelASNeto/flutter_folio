import 'package:flutter/material.dart';
import 'package:flutter_folio/features/about/about_screen.dart';
import 'package:flutter_folio/features/home/screens/contact_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image(
              image: const NetworkImage(
                  'https://i1.wp.com/blog.iteris.com.br/wp-content/uploads/2019/11/Imagem_Blog_Flutter.jpg?fit=1200%2C675'),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: GoogleFonts.elMessiri(
                              fontSize: 22, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const AboutScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sobre',
                          style: GoogleFonts.elMessiri(
                              fontSize: 22, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Portfólio',
                          style: GoogleFonts.elMessiri(
                              fontSize: 22, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const ContactScreen()));
                          },
                          child: Text(
                            'Contato',
                            style: GoogleFonts.elMessiri(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                    ],
                  ),
                  Text(
                    'Olá!\n Seja bem Vindo ao meu PortFólio Flutter',
                    style: GoogleFonts.lemonada(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
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
                    'Me chamo Manoel Amâncio.\n E sou Desenvolvedor Mobile',
                    style: GoogleFonts.elMessiri(
                      textStyle:
                          const TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Flutter é um framework cross-platform\n para se escrever apps Android, iOS, Desktop e rodar com uma performance nativa.',
                    style: GoogleFonts.elMessiri(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
