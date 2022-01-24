import 'package:flutter/material.dart';

class BotaoMenuLateral extends StatelessWidget {

  final IconData icone;
  final String nomeBotao;
  final Color corIcone;
  final VoidCallback ontap;

  const BotaoMenuLateral({
    Key? key,
    required this.icone,
    required this.nomeBotao,
    required this.corIcone,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icone, color: corIcone,),
        SizedBox(width: 5,),
        Text(nomeBotao),
      ],
    );
  }
}
