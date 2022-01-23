import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/bottom_navigator_bar.dart';
import 'package:interface_facebook/componentes/lista_menu.dart';
import 'package:interface_facebook/componentes/marca_texto.dart';
import 'package:interface_facebook/dados/dados.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

class NavegacaoTelaMaior800eMenor1200 extends StatefulWidget {
  const NavegacaoTelaMaior800eMenor1200({Key? key}) : super(key: key);

  @override
  _NavegacaoTelaMaior800eMenor1200 createState() => _NavegacaoTelaMaior800eMenor1200();
}

class _NavegacaoTelaMaior800eMenor1200 extends State<NavegacaoTelaMaior800eMenor1200> {
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


        ],
      ),
    );
  }
}
