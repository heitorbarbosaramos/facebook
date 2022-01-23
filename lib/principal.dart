import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:interface_facebook/navegacao_abas.dart';
import 'package:interface_facebook/uteis/app_controller.dart';
import 'package:interface_facebook/uteis/paleta_cores.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
        return MaterialApp(
            title: "Facebook",
            debugShowCheckedModeBanner: false,

            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),

            theme: ThemeData(
              brightness: AppController.instance.isDartTheme? Brightness.dark : Brightness.light,
              primaryColor: AppController.instance.isDartTheme ? PaletasCores.corThemeDark : PaletasCores.corThemeLight,
            ),

          home: NavegacaoAbas(),
        );
      }
    );
  }
}
