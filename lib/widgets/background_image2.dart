import 'package:flutter/material.dart';

class BackgroundImage2 extends StatelessWidget {
  const BackgroundImage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/gg3.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken)),
        ),
      ),
    );
  }
}
