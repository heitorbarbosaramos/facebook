import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/controle_tema_dark_light.dart';
import 'package:interface_facebook/componentes/marca_texto.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';
import 'package:interface_facebook/uteis/responsivo.dart';

class SliverAppBarPersonalizado extends StatefulWidget {
  const SliverAppBarPersonalizado({Key? key}) : super(key: key);

  @override
  _SliverAppBarPersonalizadoState createState() => _SliverAppBarPersonalizadoState();
}

class _SliverAppBarPersonalizadoState extends State<SliverAppBarPersonalizado> {

  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // backgroundColor: AppController.instance.isDartTheme ? PaletasCores.corThemeDark : PaletasCores.corThemeLight,
      floating: true,
      centerTitle: false,
      title: Responsivo.isMobile(context) ? MarcaTexto() : null,
      actions: [
        ControleTemaDarkLight(),

      ],
    );
  }
}

