
import 'package:animation/AnimatedImage/AnimatedImage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/image.jpg"),alignment: Alignment.topCenter),
        gradient: LinearGradient(
            colors: [Color.fromRGBO(4,13, 27, 1),
              Color.fromRGBO(140, 162, 195, 1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        ),


      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [


              AnimatedImage(),
              Container(height: 20,color: Colors.black,),


            ],
          ),
        ),
      ),
    );
  }
}
