import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key key,
    this.color,
    this.title,
    this.subtitle,
    this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            title.text.size(16.0).color(textColor).bold.make(),
            subtitle.text.make()
          ],
        )
      ],
    );
  }
}
