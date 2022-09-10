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
        CardCustom(
          image: 'images/rick_e_morty.png',
          description: 'Segundo app Desenvolvido',
          toolsUsed: '',
        ),
      ],
    );
  }
}
