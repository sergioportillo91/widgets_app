import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

 double alto = 50;
 double ancho = 50;
 Color color = Colors.indigo;
 double borderRadius = 10; 

void cambiarContainer(){

  final ramdon = Random();

  ancho = ramdon.nextInt(300) + 50;
  alto = ramdon.nextInt(300) + 50;
  borderRadius = ramdon.nextInt(100) + 10;
  color = Color.fromRGBO(ramdon.nextInt(250), ramdon.nextInt(250), ramdon.nextInt(250), 1);
  setState(() {
    
  });
}

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: ancho,
            height: alto,
            curve: Curves.ease,
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius)
            ),
            ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => cambiarContainer(),
          child: const Icon(Icons.play_arrow)),
      );
  }
}