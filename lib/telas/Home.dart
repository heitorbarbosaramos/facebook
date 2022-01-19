import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/area_criar_postagem.dart';
import 'package:interface_facebook/componentes/botao_circulo.dart';
import 'package:interface_facebook/componentes/sliverAppBar.dart';
import 'package:interface_facebook/dados/dados.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarPersonalizado(),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(usuarioLogado: usuarioAtual,),
          ),
        ],
      ),
    );
  }
}
