import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parallax_animation/parallax_area.dart';
import 'package:parallax_animation/parallax_widget.dart';
import 'package:untitled/chart.dart';

import 'demo.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: demo(),
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Parallax sample"),
      ),
      body: ParallaxArea(
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ParallaxWidget(
              child: Center(
                child: Text(
                  "PAGE ${index + 1}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              background: Image.asset(
                "background/pexels-1.jpg",
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}

