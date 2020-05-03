import 'package:covstats/core/models/overall_info_model.dart';
import 'package:covstats/features/shared/animations/fade_in_animation.dart';
import 'package:covstats/features/statistics/widgets/status_panel_item.dart';
import 'package:flutter/material.dart';

Widget statusPanelGrid(OverallInfoModel model) {
  return FadeAnimation(
    delay: 0.4,
    child: Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: <Widget>[
                StatusPanelItem(
                  title: 'Cases',
                  number: model.cases,
                  color: Colors.orangeAccent,
                  textSize: 26.0,
                ),
                StatusPanelItem(
                  title: 'Deaths',
                  number: model.deaths,
                  color: Colors.red,
                  textSize: 26.0,
                ),
              ],
            ),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: <Widget>[
                StatusPanelItem(
                  title: 'Recovered',
                  number: model.recovered,
                  color: Colors.green,
                ),
                StatusPanelItem(
                  title: 'Active',
                  number: model.active,
                  color: Colors.blue,
                ),
                StatusPanelItem(
                  title: 'Critical',
                  number: model.critical,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
