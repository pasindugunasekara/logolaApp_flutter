import 'package:flutter/material.dart';

// ignore: camel_case_types
class backgroundImage extends StatelessWidget {
  const backgroundImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/profile.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
        )),
      ),
    );
  }
}
