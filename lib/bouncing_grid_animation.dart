import 'package:flutter/material.dart';
import 'bouncing_animation.dart';

class BouncingGridAnimation extends StatefulWidget {
  
  final List<Widget> children;
  final int delay;
  final Color color;
  final double size;

  BouncingGridAnimation({
    this.color,
    this.size,
    this.delay,
    this.children
  }): assert((color == null && children == null) || (color != null && children == null) || (color == null && children != null), 'either children or color but not both');

  
  @override
  _BouncingGridAnimationState createState() => _BouncingGridAnimationState();
}

class _BouncingGridAnimationState extends State<BouncingGridAnimation> with TickerProviderStateMixin {

  List<Widget> children;

  @override
  void initState() {
    children = widget.children?? List.filled(9, null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncingAnimation(0.2, 0.7, delay: widget.delay, color: widget.color, child: children[0], size: widget.size),
                BouncingAnimation(0.3, 0.8, delay: widget.delay, color: widget.color, child: children[1], size: widget.size),
                BouncingAnimation(0.4, 1.0, delay: widget.delay, color: widget.color, child: children[2], size: widget.size),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncingAnimation(0.1, 0.6, delay: widget.delay, color: widget.color, child: children[3], size: widget.size),
                BouncingAnimation(0.2, 0.7, delay: widget.delay, color: widget.color, child: children[4], size: widget.size),
                BouncingAnimation(0.3, 0.8, delay: widget.delay, color: widget.color, child: children[5], size: widget.size),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncingAnimation(0.0, 0.5, delay: widget.delay, color: widget.color, child: children[6], size: widget.size),
                BouncingAnimation(0.1, 0.6, delay: widget.delay, color: widget.color, child: children[7], size: widget.size),
                BouncingAnimation(0.2, 0.7, delay: widget.delay, color: widget.color, child: children[8], size: widget.size),
              ],
            ),
          ],
        ),
      )
    );
  }
}
