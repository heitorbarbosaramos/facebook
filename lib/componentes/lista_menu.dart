import 'package:flutter/material.dart';
import 'package:interface_facebook/telas/Home.dart';
import 'package:interface_facebook/telas/flag.dart';
import 'package:interface_facebook/telas/marketing_place.dart';
import 'package:interface_facebook/telas/meu_perfil.dart';
import 'package:interface_facebook/telas/ondemand_video.dart';
import 'package:interface_facebook/telas/sinal.dart';
import 'package:line_icons/line_icons.dart';

class ListaMenu {

  static final List<Widget> telas = [
    Home(),
    OndeMandeVideo(),
    MarketinPlace(),
    Bandeira(),
    Sinos(),
    MeuPerfil(),
  ];

  static List<IconData> icones = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.person
  ];

  static int indiceAbaSelecionada = 0;

}
