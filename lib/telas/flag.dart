import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/sliverAppBar.dart';

class Bandeira extends StatelessWidget {
  const Bandeira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarPersonalizado(),
          SliverToBoxAdapter(child: Container(child: Text("Bandeira"),),)
        ],
      ),
    );
  }
}
