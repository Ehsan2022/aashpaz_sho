import 'dart:math';
import 'package:flutter/material.dart';

class CircleIndicator extends StatefulWidget {
  final double percent;

  CircleIndicator({this.percent = 0.5});
  @override
  _CircleIndicatorState createState() => _CircleIndicatorState();
}

class _CircleIndicatorState extends State<CircleIndicator>
    with SingleTickerProviderStateMixin {
  double fraction = 0.0;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    var controller = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);

    animation = Tween(begin: 0.0, end: widget.percent).animate(controller)
      ..addListener(() {
        setState(() {
          fraction = animation.value;
        });
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[

          Container(
            width: 70,
            height: 70,
            child: CustomPaint(
              foregroundPainter: CirclePainter(fraction),
            ),
          ),
        ],
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  late Paint _paint;
  double _fraction;

  CirclePainter(this._fraction) {
    _paint = Paint()
      ..color = Color(0xff8DB646)
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset(0.0, 0.0) & size;
    canvas.drawArc(rect, -pi / 2, pi * 2 * _fraction, false, _paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}
