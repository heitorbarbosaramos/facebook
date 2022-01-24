import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/sliverAppBar.dart';

class Grupos extends StatefulWidget {
  const Grupos({Key? key}) : super(key: key);

  @override
  _SinosState createState() => _SinosState();
}

class _SinosState extends State<Grupos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarPersonalizado(),
          SliverToBoxAdapter(child: Container(child: Text("Grupos"),),)
        ],
      ),
    );
  }
}
