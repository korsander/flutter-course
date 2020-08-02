import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              "The first challenge",
              style: GoogleFonts.pacifico(color: Colors.grey[700]),
            ),
            backgroundColor: Colors.black87,
          ),
          body: Stack(
            children: <Widget>[
              Container(
                  constraints: BoxConstraints.expand(),
                  child: Image(
                    image: AssetImage("images/background.jpg"),
                    repeat: ImageRepeat.repeat,
                    fit: BoxFit.contain,
                  )),
              SpinningGalaxyWidget(),
            ],
          )),
    ),
  );
}

class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({Key key, AnimationController controller})
      : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * -2.0 * math.pi,
      child: Center(
        child: Image(
          image: AssetImage("images/galaxy.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class SpinningGalaxyWidget extends StatefulWidget {
  SpinningGalaxyWidget({Key key}) : super(key: key);

  @override
  _SpinningGalaxyWidgetState createState() => _SpinningGalaxyWidgetState();
}

class _SpinningGalaxyWidgetState extends State<SpinningGalaxyWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SpinningContainer(controller: _controller);
  }
}
