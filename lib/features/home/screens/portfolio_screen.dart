import 'package:flutter/material.dart';
import 'dart:html' as html;

class PortFolioScreen extends StatelessWidget {
  const PortFolioScreen({super.key});

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
                Colors.purple,
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 350,
                      width: 280,
                      child: Image.asset(
                        'images/covid_brazil.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        html.window.open(
                            'https://github.com/ManoelASNeto/rick_e_morty',
                            "_blank");
                      },
                      child: SizedBox(
                        height: 350,
                        width: 280,
                        child: Image.asset('images/rick_e_morty.png'),
                      ),
                    ),
                    SizedBox(
                      height: 350,
                      width: 280,
                      child: Image.asset(
                        'images/buscador.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SizedBox(
                    height: 160,
                    width: 200,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'App desenvolvido que retorna os dados atualizados do Covid em todos os estados do Brasil',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 200,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'App que mostra todos os personagens da serie Rick e Morty',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 200,
                    child: Card(
                      elevation: 5,
                      child: Text(
                        'App Buxacdor de Ceps que localiza ruas, DDD, e cidades do Brasil',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
