import 'package:flutter/material.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

class NavegacaoBottomBar extends StatelessWidget {

  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;

  const NavegacaoBottomBar({
    required this.icones,
    required this.indiceAbaSelecionada,
    required this.onTap,
    Key? key}
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTap,
        indicator: BoxDecoration(
          border: Border(
            top: BorderSide(color: PaletasCores.azulFacebook,width: 3),
            bottom: BorderSide(color: PaletasCores.azulFacebook,width: 3),
            // left: BorderSide(color: PaletasCores.azulFacebook,width: 3),
            // right: BorderSide(color: PaletasCores.azulFacebook,width: 3),
          )
        ),
        tabs: icones.asMap().map((indiceDoMap, icone){
          return MapEntry(indiceDoMap, Tab(
            icon: Icon(icone, color: indiceAbaSelecionada == indiceDoMap ? PaletasCores.azulFacebook :  Colors.grey , size: 30,),
          ));
        }).values.toList()
    );
  }
}
