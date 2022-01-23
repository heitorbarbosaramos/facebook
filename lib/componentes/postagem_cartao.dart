import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/imagem_perfil.dart';
import 'package:interface_facebook/modelos/postagem.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

class CartaoPostagem extends StatelessWidget {

  final Postagem postagem;

  const CartaoPostagem({
    Key? key,
    required this.postagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //CABEÇALHO
          Row(
            children: [
              ImagemPerfil(imagemUrl: postagem.usuario.urlImagem),
              SizedBox(width: 5,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(postagem.usuario.nome, style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("${postagem.tempoAtras} - ", ),
                          Icon(Icons.public, size: 20, color: Colors.grey,),
                        ],
                      )

                    ],
                  ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
            ],
          ),


          
          //IMAGEM DE POSTAGEM
          SizedBox(height: 10,),
          CachedNetworkImage(imageUrl: postagem.urlImagem, fit: BoxFit.cover, alignment: Alignment.center,),
          SizedBox(height: 10,),


          //DETALHE DA POSTAGEM
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: PaletasCores.azulFacebook,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.thumb_up_sharp, color: Colors.white, size: 15,),
                  ),
                  SizedBox(width: 5,),


                  Expanded(child: Text(" ${postagem.curtidas}")),


                  Text("${postagem.comentarios} comentarios"),
                  SizedBox(width: 10,),
                  Text("${postagem.compartilhamentos} compartilhamentos"),
                ],
              ),
              Divider(thickness: 1.2,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotaoPostagem(texto: "Curtor", icone: Icon(LineIcons.thumbsUp), onTap: (){}),
                  BotaoPostagem(texto: "Comentar", icone: Icon(LineIcons.comments), onTap: (){}),
                  BotaoPostagem(texto: "compartilhar", icone: Icon(LineIcons.share), onTap: (){}),
                ],
              ),



            ],
          )
        ],
      ),
    );
  }
}

class BotaoPostagem extends StatelessWidget {

  final String texto;
  final Icon icone;
  final VoidCallback onTap;

  const BotaoPostagem({
    Key? key,
    required this.texto,
    required this.icone,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Row(
       children: [
         icone,
         Text(texto),
       ],
     ),
    );
  }
}

