import 'package:flutter/material.dart';

class BouncingAnimation extends StatefulWidget {

  final double start, end;
  final Widget child;
  final int delay;
  final Color color;
  final double size;
  BouncingAnimation(this.start, this.end, {this.child, this.delay, this.color, this.size}):
        assert((color == null && child == null) || (color != null && child == null) || (color == null && child != null), 'either children or color but not both');

  @override
  _BouncingAnimationState createState() => _BouncingAnimationState();
}

class _BouncingAnimationState extends State<BouncingAnimation> with TickerProviderStateMixin {

  AnimationController controller;
  Tween<double> tween = Tween(begin: -1, end: 1);

  @override
  void initState() {
    controller = AnimationController(duration: Duration(milliseconds: widget.delay?? 1500), vsync: this);
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      alignment: Alignment.center,
      scale: tween.animate(CurvedAnimation(parent: controller, curve: Interval(widget.start, widget.end, curve: Curves.easeIn),)),
      child: Container(
        height: widget.size?? 50,
        width: widget.size?? 50,
        color: widget.color?? Colors.lightBlue,
        child: widget.child,
      ),
    );
  }
}
