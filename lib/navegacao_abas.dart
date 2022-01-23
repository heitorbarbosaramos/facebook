import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/bottom_navigator_bar.dart';
import 'package:interface_facebook/componentes/lista_menu.dart';
import 'package:interface_facebook/componentes/navegacao_tela_maior_800_top.dart';
import 'package:interface_facebook/uteis/responsivo.dart';

class NavegacaoAbas extends StatefulWidget {
  const NavegacaoAbas({Key? key}) : super(key: key);

  @override
  _NavegacaoAbasState createState() => _NavegacaoAbasState();
}

class _NavegacaoAbasState extends State<NavegacaoAbas> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: ListaMenu.icones.length,
        child: Scaffold(
          appBar: Responsivo.isMobile(context) ? null : PreferredSize(child: NavegacaoTelaMaior800eMenor1200(), preferredSize: Size(MediaQuery.of(context).size.width, 100)),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: ListaMenu.telas,
          ),
          bottomNavigationBar: !Responsivo.isMobile(context) ? null : NavegacaoBottomBar(
            icones: ListaMenu.icones,
            indiceAbaSelecionada: ListaMenu.indiceAbaSelecionada,
            onTap: (indice){
              setState(() {
                ListaMenu.indiceAbaSelecionada = indice;
              });
            },
          ),
        )
    );
  }
}

