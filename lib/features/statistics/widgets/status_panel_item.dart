import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class StatusPanelItem extends StatelessWidget {
  final String title;
  final double number;
  final Color color;
  final double textSize;

  const StatusPanelItem(
      {Key key, this.title, this.number, this.color, this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat.compactLong();

    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                title.text.color(Colors.white).make(),
              ],
            ),
            SizedBox(height: 10.0),
            formatter
                .format(number)
                .text
                .color(Colors.white)
                .size(textSize)
                .bold
                .make(),
          ],
        ),
      ),
    );
  }
}
