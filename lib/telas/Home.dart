import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/area_criar_postagem.dart';
import 'package:interface_facebook/componentes/area_estorias.dart';
import 'package:interface_facebook/componentes/postagem.dart';
import 'package:interface_facebook/componentes/sliverAppBar.dart';
import 'package:interface_facebook/dados/dados.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarPersonalizado(),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(usuarioLogado: usuarioAtual,),
          ),
          SliverPadding(padding: EdgeInsets.fromLTRB(0, 10, 0, 5)),
          SliverToBoxAdapter(child: AreaEstorias(usuario: usuarioAtual, estorias: estorias,)),
          Postagens(),
        ],
      ),
    );
  }
}

