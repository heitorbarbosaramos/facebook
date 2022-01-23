import 'package:flutter/material.dart';
import 'package:interface_facebook/componentes/sliverAppBar.dart';

class OndeMandeVideo extends StatefulWidget {
  const OndeMandeVideo({Key? key}) : super(key: key);

  @override
  _OndeMandeVideoState createState() => _OndeMandeVideoState();
}

class _OndeMandeVideoState extends State<OndeMandeVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarPersonalizado(),
          SliverToBoxAdapter(child: Container(child: Text("OndeManVideos"),),)

        ],

      ),
    );
  }
}
