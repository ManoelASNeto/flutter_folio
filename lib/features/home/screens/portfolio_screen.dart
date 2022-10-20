import 'package:flutter/material.dart';
import 'package:flutter_folio/features/widgets/card_custom.dart';

class PortFolioScreen extends StatelessWidget {
  const PortFolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CardCustom(
          image: 'images/covid_brazil.png',
          description:
              'Aplicativo desenvolvido para mostrar os dados do Corona Virus em todo territorio Brasileiro\nCada Estado tras os dados de casos, mortes e casos suspeitos.',
          toolsUsed:
              'Ferramentas utilizadas: \n*Clean Architecture, \n*API Rest, \n*BloC, \n*Equatable, \n*getIt',
        ),
        SizedBox(
          height: 10,
        ),
        CardCustom(
          isImageRight: true,
          image: 'images/rick.jpg',
          description:
              'Aplicativo desenvolvido que mostra todos os mais de 600 \npersonagens da série animada Rick e Morty',
          toolsUsed:
              'Ferramentas utilizadas: \n*Clean Architecture, \n*API Rest, \n*BloC, \n*Equatable, \n*getIt,',
        ),
        SizedBox(
          height: 10,
        ),
        CardCustom(
          image: 'images/buscador.png',
          description:
              'Buscador de Ceps, \nque traz o endereço, municipio e ddd do cep informado',
          toolsUsed:
              'Ferramentas utilizadas: \n*Clean Architecture, \n*API Rest, \n*BloC, \n*Equatable, \n*getIt, \n*Google Fonts',
        ),
        SizedBox(
          height: 10,
        ),
        CardCustom(
          isImageRight: true,
          image: 'images/rick_and_morty.jpg',
          description:
              'Aplicativo desenvolvido que mostra todos os mais de 600 \npersonagens da série animada Rick e Morty',
          toolsUsed:
              'Ferramentas utilizadas:\n*MVC, \n*API Rest, \n*MobX, \n*GetIt, \n*Fonte Personalizada',
        ),
      ],
    );
  }
}
