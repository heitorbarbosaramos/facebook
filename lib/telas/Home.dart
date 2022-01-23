import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/area_criar_postagem.dart';
import 'package:interface_facebook/componentes/area_estorias.dart';
import 'package:interface_facebook/componentes/postagem.dart';
import 'package:interface_facebook/componentes/sliverAppBar.dart';
import 'package:interface_facebook/dados/dados.dart';
import 'package:interface_facebook/uteis/responsivo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsivo(
        mobile: HomeMobile(),
        tablet: HomeTablbet(),
        desktop: HomeDeskTop(),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBarPersonalizado(),
        SliverToBoxAdapter(child: Text("HomeMobile"),),
        SliverToBoxAdapter(
          child: AreaCriarPostagem(usuarioLogado: usuarioAtual,),
        ),
        SliverPadding(padding: EdgeInsets.fromLTRB(0, 10, 0, 5)),
        SliverToBoxAdapter(child: AreaEstorias(usuario: usuarioAtual, estorias: estorias,)),
        Postagens(),
      ],
    );
  }
}

class HomeTablbet extends StatelessWidget {
  const HomeTablbet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBarPersonalizado(),
        SliverToBoxAdapter(child: Text("HomeTablet"),),
        SliverToBoxAdapter(
          child: AreaCriarPostagem(usuarioLogado: usuarioAtual,),
        ),
        SliverPadding(padding: EdgeInsets.fromLTRB(0, 10, 0, 5)),
        SliverToBoxAdapter(child: AreaEstorias(usuario: usuarioAtual, estorias: estorias,)),
        Postagens(),
      ],
    );
  }
}

class HomeDeskTop extends StatelessWidget {
  const HomeDeskTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        //SliverAppBarPersonalizado(),
        SliverToBoxAdapter(child: Text("HomeDesktop"),),
        SliverToBoxAdapter(
          child: AreaCriarPostagem(usuarioLogado: usuarioAtual,),
        ),
        SliverPadding(padding: EdgeInsets.fromLTRB(0, 10, 0, 5)),
        SliverToBoxAdapter(child: AreaEstorias(usuario: usuarioAtual, estorias: estorias,)),
        Postagens(),
      ],
    );
  }
}




