import 'package:flutter/material.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:line_icons/line_icons.dart';

import 'botao_circulo.dart';

class ControleTemaDarkLight extends StatefulWidget {
  const ControleTemaDarkLight({Key? key}) : super(key: key);

  @override
  _ControleTemaDarkLightState createState() => _ControleTemaDarkLightState();
}

class _ControleTemaDarkLightState extends State<ControleTemaDarkLight> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(AppController.instance.isDartTheme? Icons.lightbulb_outline : Icons.tungsten_outlined, color: AppController.instance.isDartTheme ?  Colors.white : Colors.black, size: 36,),
      Switch(value: AppController.instance.isDartTheme, onChanged: (value){
        setState(() {
          //isDartTheme = value;
        });
        AppController.instance.alteraLightDartTema();
      }),
      BotaoCirculo(icone: LineIcons.search, tamanhoIcone: 30, onPressed: (){},),
      BotaoCirculo(icone: LineIcons.facebookMessenger, tamanhoIcone: 30, onPressed: (){},),
    ],
    );
  }
}
