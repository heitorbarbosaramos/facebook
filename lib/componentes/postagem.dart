import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/postagem_cartao.dart';
import 'package:interface_facebook/dados/dados.dart';
import 'package:interface_facebook/modelos/postagem.dart';

class Postagens extends StatelessWidget {
  const Postagens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, indice){
              Postagem postagem = postagens[indice];
              return CartaoPostagem(postagem: postagem,);
            },
          childCount: postagens.length
        ));
  }
}
