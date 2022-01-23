import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/bottom_navigator_bar.dart';
import 'package:interface_facebook/telas/Home.dart';
import 'package:interface_facebook/telas/flag.dart';
import 'package:interface_facebook/telas/marketing_place.dart';
import 'package:interface_facebook/telas/meu_perfil.dart';
import 'package:interface_facebook/telas/ondemand_video.dart';
import 'package:interface_facebook/telas/sinal.dart';
import 'package:line_icons/line_icons.dart';

class NavegacaoAbas extends StatefulWidget {
  const NavegacaoAbas({Key? key}) : super(key: key);

  @override
  _NavegacaoAbasState createState() => _NavegacaoAbasState();
}

class _NavegacaoAbasState extends State<NavegacaoAbas> {

  final List<Widget> _telas = [
    Home(),
    OndeMandeVideo(),
    MarketinPlace(),
    Bandeira(),
    Sinos(),
    MeuPerfil(),
  ];

  int indiceAbaSelecionada = 0;

  List<IconData> _icones = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.person
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icones.length,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: _telas,
          ),
          bottomNavigationBar: NavegacaoBottomBar(
            icones: _icones,
            indiceAbaSelecionada: indiceAbaSelecionada,
            onTap: (indice){
              setState(() {
                indiceAbaSelecionada = indice;
              });
            },
          ),
        )
    );
  }
}

