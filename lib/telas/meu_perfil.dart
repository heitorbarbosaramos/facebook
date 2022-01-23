import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/sliverAppBar.dart';

class MeuPerfil extends StatefulWidget {
  const MeuPerfil({Key? key}) : super(key: key);

  @override
  _MeuPerfilState createState() => _MeuPerfilState();
}

class _MeuPerfilState extends State<MeuPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarPersonalizado(),
          SliverToBoxAdapter(child: Text("Meu Perfil"),)
        ],
      ),
    );
  }
}
