import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/imagem_perfil.dart';
import 'package:interface_facebook/modelos/usuarios.dart';

class ListaDeContatos extends StatelessWidget {

  final List<Usuario> contatos;

  const ListaDeContatos({
    required this.contatos,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child:  Text("Contatos...")),
            IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined)),
          ],
        ),
        
        Expanded(
            child:   ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10),
              itemCount: contatos.length,
              itemBuilder: (context, indice){
              Usuario usuario = contatos[indice];
              return Padding(
                  padding: EdgeInsets.all(6),
                child: Row(
                  children: [
                    ImagemPerfil(imagemUrl: usuario.urlImagem, foiVisualizado: true,),
                    SizedBox(width: 5,),
                    Text(usuario.nome),
                  ],
                ),
              );

            })
        )

      
      ],

    );
  }
}
