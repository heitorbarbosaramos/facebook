import 'package:flutter/material.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

class MarcaTexto extends StatelessWidget {
  const MarcaTexto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("facebook",
      style: TextStyle(
          color: PaletasCores.azulFacebook,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          letterSpacing: -1.2
      ),
    );
  }
}
