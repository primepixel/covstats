import 'package:covstats/core/viewmodels/widgets/all_countries_by_cases_widget.dart';
import 'package:covstats/features/shared/base_widget.dart';
import 'package:covstats/features/statistics/widgets/status_top_ten_countries_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatisticsPageBuildCountriesPanel extends StatelessWidget {
  const StatisticsPageBuildCountriesPanel({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) =>
      BaseWidget<AllCountriesSortedByCasesWidget>(
          model: AllCountriesSortedByCasesWidget(api: Provider.of(context)),
          onModelReady: (model) => model.getAllCountriesSortedByCases(),
          builder: (context, model, child) => model.busy
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: CircularProgressIndicator()),
                )
              : StatisticsPageBuildTopCountries(
                  countries: model.allCountriesSortedByCases));
}
