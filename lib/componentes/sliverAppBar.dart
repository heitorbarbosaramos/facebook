import 'package:flutter/material.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

import 'botao_circulo.dart';

class SliverAppBarPersonalizado extends StatefulWidget {
  const SliverAppBarPersonalizado({Key? key}) : super(key: key);

  @override
  _SliverAppBarPersonalizadoState createState() => _SliverAppBarPersonalizadoState();
}

class _SliverAppBarPersonalizadoState extends State<SliverAppBarPersonalizado> {

  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppController.instance.isDartTheme ? PaletasCores.corThemeDark : PaletasCores.corThemeLight,
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
        Row(children: [
          Icon(AppController.instance.isDartTheme? Icons.lightbulb_outline : Icons.tungsten, color: Colors.black, size: 30,),
          Switch(value: AppController.instance.isDartTheme, onChanged: (value){
            setState(() {
              //isDartTheme = value;
            });
            AppController.instance.alteraLightDartTema();
          })
        ],),
        BotaoCirculo(icone: LineIcons.search, tamanhoIcone: 30, onPressed: (){},),
        BotaoCirculo(icone: LineIcons.facebookMessenger, tamanhoIcone: 30, onPressed: (){},),
      ],
    );
  }
}

