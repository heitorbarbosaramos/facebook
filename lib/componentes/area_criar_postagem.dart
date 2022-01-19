import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interface_facebook/modelos/usuarios.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

class AreaCriarPostagem extends StatelessWidget {

  final Usuario usuarioLogado;

  const AreaCriarPostagem({
    Key? key,
    required this.usuarioLogado
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppController.instance.isDartTheme ? PaletasCores.corThemeDark : PaletasCores.corThemeLight),
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(usuarioLogado.urlImagem),
              ),
              SizedBox(width: 10,),
              Expanded(child: TextField(decoration: InputDecoration.collapsed(hintText: "No que você está pensando?"),)),
            ],
          ),
          Divider(height: 10,),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(onPressed: (){}, icon: Icon(Icons.videocam, color: Colors.red,), label: Text("Video")),
                VerticalDivider(width: 8,),
                TextButton.icon(onPressed: (){}, icon: Icon(Icons.photo_library, color: Colors.green,), label: Text("Fotos")),
                VerticalDivider(width: 8,),
                TextButton.icon(onPressed: (){}, icon: Icon(Icons.video_call, color: Colors.purple,), label: Text("Sala")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
