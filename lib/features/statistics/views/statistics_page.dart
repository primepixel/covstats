import 'package:covstats/features/statistics/widgets/statistics_page_build_countries_panel.dart';
import 'package:covstats/features/statistics/widgets/statistics_page_build_ratio_panel.dart';
import 'package:covstats/features/statistics/widgets/statistics_page_build_status_panel.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                StatisticsPageBuildStatusPanels(context: context),
                SizedBox(height: 10.0),
                StatisticsPageBuildRatioPanel(context: context),
                SizedBox(height: 10.0),
                StatisticsPageBuildCountriesPanel(context: context)
              ],
            ),
          ),
        ),
      );
}
