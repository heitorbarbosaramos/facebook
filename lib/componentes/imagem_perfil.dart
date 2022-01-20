import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

class ImagemPerfil extends StatelessWidget {

  final String imagemUrl;
  final bool foiVisualizado;

  const ImagemPerfil({
    Key? key,
    required this.imagemUrl,
    this.foiVisualizado = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: foiVisualizado ? Colors.grey : PaletasCores.azulFacebook,
      child: CircleAvatar(
        radius: 23,
        backgroundImage: CachedNetworkImageProvider(imagemUrl),
      ),
    );
  }
}
