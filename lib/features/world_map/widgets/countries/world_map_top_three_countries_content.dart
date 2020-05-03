import 'package:built_collection/built_collection.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:covstats/features/shared/animations/fade_in_animation.dart';
import 'package:covstats/features/shared/app_colors.dart';
import 'package:covstats/features/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class WorldMapTopThreeCountriesContent extends StatelessWidget {
  const WorldMapTopThreeCountriesContent({
    Key key,
    @required this.countries,
  }) : super(key: key);

  final BuiltList<CountriesModel> countries;

  @override
  Widget build(BuildContext context) {
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
              'Top countries'.text.black.bold.size(18.0).make(),
              SizedBox(height: 20.0),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return WorldMapTopCountriesListItem(
                      index: index, countries: countries);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WorldMapTopCountriesListItem extends StatelessWidget {
  const WorldMapTopCountriesListItem({
    Key key,
    @required this.index,
    @required this.countries,
  }) : super(key: key);

  final int index;
  final BuiltList<CountriesModel> countries;

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.decimalPattern();
    final percentageFormatter = NumberFormat.percentPattern();

    var value1 = countries[index].cases.floor() / 10000;
    var value2 = countries[index].recovered.floor() / 10000;
    var perc = twoNumbersPercentage(value1, value2);
    print('Percentage: $perc');

    return Column(
      children: <Widget>[
        ListTile(
          leading: AnimatedCircularChart(
            size: const Size(100, 100.0),
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
            holeRadius: 15.0,
            holeLabel: '${percentageFormatter.format(perc)}',
            labelStyle: TextStyle(
              color: Colors.blueGrey[600],
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          title: '${countries[index].country}'.text.bold.make(),
          subtitle:
              'Affected: ${formatter.format(countries[index].cases)}\nRecovered: ${formatter.format(countries[index].recovered)}'
                  .text
                  .make(),
        ),
        Divider(),
      ],
    );
  }
}
