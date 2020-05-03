import 'package:covstats/core/models/overall_info_model.dart';
import 'package:covstats/features/shared/animations/fade_in_animation.dart';
import 'package:covstats/features/shared/app_colors.dart';
import 'package:covstats/features/shared/indicator.dart';
import 'package:covstats/features/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class StatusRatioPanel extends StatelessWidget {
  final OverallInfoModel model;

  StatusRatioPanel({@required this.model});

  final formatter = NumberFormat.decimalPattern();
  final percentageFormatter = NumberFormat.percentPattern();

  @override
  Widget build(BuildContext context) {
    var value1 = model.cases.floor() / 10000;
    var value2 = model.recovered.floor() / 10000;
    var perc = twoNumbersPercentage(value1, value2);

    return FadeAnimation(
      delay: 0.4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[200], width: 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              'Ratio of recovery'.text.black.bold.size(18.0).make(),
              SizedBox(height: 20.0),
              Center(
                child: AnimatedCircularChart(
                  size: const Size(300.0, 300.0),
                  initialChartData: <CircularStackEntry>[
                    CircularStackEntry(
                      <CircularSegmentEntry>[
                        CircularSegmentEntry(
                          value1,
                          AppColors.primaryRed,
                          rankKey: 'cases',
                        ),
                        CircularSegmentEntry(
                          value2,
                          AppColors.primaryFadeRed,
                          rankKey: 'recovered',
                        ),
                      ],
                      rankKey: 'progress',
                    ),
                  ],
                  chartType: CircularChartType.Radial,
                  edgeStyle: SegmentEdgeStyle.round,
                  holeRadius: 70.0,
                  holeLabel: '${percentageFormatter.format(perc)}',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Indicator(
                    isSquare: false,
                    color: AppColors.primaryRed,
                    title: formatter.format(model.cases),
                    subtitle: 'Affected',
                  ),
                  Indicator(
                    isSquare: false,
                    color: AppColors.primaryFadeRed,
                    title: formatter.format(model.recovered),
                    subtitle: 'Recovered',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
