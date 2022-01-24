import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/botao_menu_lateral.dart';
import 'package:interface_facebook/componentes/imagem_perfil.dart';
import 'package:interface_facebook/componentes/lista_menu.dart';
import 'package:interface_facebook/dados/dados.dart';

class MenuLateralDesktop extends StatelessWidget {
  const MenuLateralDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImagemPerfil(imagemUrl: usuarioAtual.urlImagem),
            SizedBox(width: 5,),
            Text(usuarioAtual.nome),
          ],
        ),
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: ListaMenu.menuLateral.length,
                itemBuilder: (context, index){
                  BotaoMenuLateral botao = ListaMenu.menuLateral[index];
                  return InkWell(
                    onTap: botao.ontap,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: botao,
                    ),
                  );
                }))


      ],
    );
  }
}
