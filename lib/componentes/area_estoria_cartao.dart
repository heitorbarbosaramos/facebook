import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/imagem_perfil.dart';
import 'package:interface_facebook/modelos/estoria.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

class CartaoEstoria extends StatelessWidget {

  final Estoria estoria;
  final bool adcionarEstoria;

  const CartaoEstoria({
    Key? key,
    required this.estoria,
    this.adcionarEstoria = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(imageUrl: estoria.urlImagem, height: double.infinity, width: 110, fit: BoxFit.cover,),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              gradient: AppController.instance.isDartTheme ? PaletasCores.degradeEstoriaDark :  PaletasCores.degradeEstoriaLight,
              borderRadius: BorderRadius.circular(12)),
        ),
        Positioned(
            top: 8,
            left: 8,
            child: adcionarEstoria
                ? Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: AppController.instance.isDartTheme ? PaletasCores.azulFacebook : Colors.white,
                              shape: BoxShape.circle
                          ),
                          child:  IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(Icons.add, color: AppController.instance.isDartTheme ?  Colors.white :  PaletasCores.azulFacebook, ),
                            iconSize: 30,
                            onPressed: (){},
                          )
                        )

                        :

                        ImagemPerfil(imagemUrl: estoria.usuario.urlImagem, foiVisualizado: estoria.foiVisualizado,),
                    ),
        Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              adcionarEstoria ? "Adcionar Estoria" : estoria.usuario.nome,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
        )

      ],
    );
  }
}
