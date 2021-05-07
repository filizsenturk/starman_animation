
import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedImage extends StatefulWidget {
  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage> with SingleTickerProviderStateMixin{
  late final AnimationController _controller=AnimationController(vsync: this,
  duration: const Duration(seconds: 3) )..repeat(reverse: true);
  late Animation<Offset> animation=Tween(
    begin: Offset.zero,
    end: Offset(0,0.08)
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SlideTransition(position: animation, child: Image.asset("assets/starman.png"));
  }
}
