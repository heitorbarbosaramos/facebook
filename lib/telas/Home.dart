import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/botao_circulo.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          floating: true,
          centerTitle: false,
          title: Text("facebook",
            style: TextStyle(
                color: PaletasCores.azulFacebook,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: -1.2
            ),
          ),
          actions: [
            BotaoCirculo(icone: LineIcons.search, tamanhoIcone: 30, onPressed: (){},),
            BotaoCirculo(icone: LineIcons.facebookMessenger, tamanhoIcone: 30, onPressed: (){},),
          ],
        )
      ],
    );
  }
}
