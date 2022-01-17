import 'package:flutter/material.dart';

class BotaoCirculo extends StatelessWidget {

  final IconData icone;
  final double tamanhoIcone;
  final VoidCallback onPressed;

  const BotaoCirculo({
    Key? key,
    required this.icone,
    required this.tamanhoIcone,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icone),
        iconSize: tamanhoIcone,
        color: Colors.black,
      ),
    );
  }
}
