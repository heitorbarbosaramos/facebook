import 'package:flutter/material.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

import 'botao_circulo.dart';

class SliverAppBarPersonalizado extends StatelessWidget {
  const SliverAppBarPersonalizado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
    );
  }
}
