import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/botao_menu_lateral.dart';
import 'package:interface_facebook/componentes/menu_lateral_desktop.dart';
import 'package:interface_facebook/telas/Home.dart';
import 'package:interface_facebook/telas/amigos.dart';
import 'package:interface_facebook/telas/flag.dart';
import 'package:interface_facebook/telas/marketing_place.dart';
import 'package:interface_facebook/telas/meu_perfil.dart';
import 'package:interface_facebook/telas/ondemand_video.dart';
import 'package:interface_facebook/telas/sinal.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

class ListaMenu {

  static final List<BotaoMenuLateral> menuLateral = [
    BotaoMenuLateral(icone: LineIcons.userFriends, corIcone: PaletasCores.azulFacebook, nomeBotao: "Amigos", ontap: () => Amigos(),),
    BotaoMenuLateral(icone: LineIcons.facebookMessenger, corIcone: PaletasCores.azulFacebook, nomeBotao: "Mensagens", ontap: (){}),
    BotaoMenuLateral(icone: LineIcons.flag, corIcone: Colors.orange, nomeBotao: "Páginas", ontap: (){}),
    BotaoMenuLateral(icone: LineIcons.users, corIcone: PaletasCores.azulFacebook, nomeBotao: "Grupos", ontap: (){}),
    BotaoMenuLateral(icone: Icons.storefront_outlined, corIcone: PaletasCores.azulFacebook, nomeBotao: "MarketinPlace", ontap: (){}),
    BotaoMenuLateral(icone: Icons.ondemand_video, corIcone: Colors.red, nomeBotao: "Assistir", ontap: (){}),
    BotaoMenuLateral(icone: LineIcons.calendar, corIcone: Colors.purpleAccent, nomeBotao: "Eventos", ontap: (){}),
    BotaoMenuLateral(icone: LineIcons.chevronCircleDown, corIcone: Colors.black54, nomeBotao: "Ver mais", ontap: (){}),
  ];

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
