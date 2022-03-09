import 'package:flutter/material.dart';
import 'bouncing_grid_animation.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bouncing Grid Animation'),
          centerTitle: true,
        ),
        body: Center(
          child: Scaffold(
            body: BouncingGridAnimation(
              // color: Colors.indigoAccent,
              size: 50,
              children: [
                Container(color: Colors.indigo),
                Container(color: Colors.red),
                Container(color: Colors.green),

                Container(color: Colors.red),
                Container(color: Colors.indigo),
                Container(color: Colors.red),

                Container(color: Colors.green),
                Container(color: Colors.red),
                Container(color: Colors.indigo),
              ],
            ),
          ),
        )
    );
  }
}
