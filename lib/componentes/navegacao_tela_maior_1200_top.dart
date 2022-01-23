import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/controle_tema_dark_light.dart';
import 'package:interface_facebook/dados/dados.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

import 'bottom_navigator_bar.dart';
import 'lista_menu.dart';
import 'marca_texto.dart';

class NavegacaoTelaMaior1200 extends StatefulWidget {
  const NavegacaoTelaMaior1200({Key? key}) : super(key: key);

  @override
  _NavegacaoTelaMaior1200State createState() => _NavegacaoTelaMaior1200State();
}

class _NavegacaoTelaMaior1200State extends State<NavegacaoTelaMaior1200> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: AppController.instance.isDartTheme ? PaletasCores.corThemeDark : PaletasCores.corThemeLight,
            boxShadow: [
              BoxShadow(
                  color: Colors.white12,
                  offset: Offset(0, 12),
                  blurRadius: 10
              )
            ]
        ),
        child: Row(
          children: [
            Expanded(flex: 1, child: MarcaTexto()),
            Expanded(flex: 3, child: NavegacaoBottomBar(
              icones: ListaMenu.icones,
              indiceAbaSelecionada: ListaMenu.indiceAbaSelecionada,
              onTap: (indice){
                setState(() {
                  ListaMenu.indiceAbaSelecionada = indice;
                });
              },
            ),),
            Expanded(flex: 1, child:Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: CachedNetworkImageProvider(usuarioAtual.urlImagem),
                ),
                SizedBox(width: 5,),
                Text("Heitor Fernando", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),),
            Expanded(flex: 1, child: ControleTemaDarkLight())


          ],
        ),
    );
  }
}
