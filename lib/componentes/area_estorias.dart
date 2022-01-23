import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/area_estoria_cartao.dart';
import 'package:interface_facebook/dados/dados.dart';
import 'package:interface_facebook/modelos/estoria.dart';
import 'package:interface_facebook/modelos/usuarios.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

class AreaEstorias extends StatelessWidget {

  final Usuario usuario;
  final List<Estoria> estorias;

  const AreaEstorias({
    Key? key,
    required this.usuario,
    required this.estorias
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      //color: AppController.instance.isDartTheme ? PaletasCores.corThemeDark : PaletasCores.corThemeLight,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          scrollDirection: Axis.horizontal,
          itemCount: estorias.length + 1,
          itemBuilder: (context, item){

            Estoria estoria;
            bool adcionarHistoria;

            if(item == 0 ){
              estoria = Estoria(usuario: usuarioAtual, urlImagem: usuarioAtual.urlImagem);
              adcionarHistoria = true;
            }else{
              estoria = estorias[item -1];
              adcionarHistoria = false;
            }

            return Padding(padding: EdgeInsets.all(4),
              child: CartaoEstoria(estoria: estoria, adcionarEstoria: adcionarHistoria,),
            );

      }),
    );
  }
}
