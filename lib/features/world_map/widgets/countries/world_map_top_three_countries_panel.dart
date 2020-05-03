import 'package:covstats/core/viewmodels/widgets/all_countries_by_cases_widget.dart';
import 'package:covstats/features/shared/base_widget.dart';
import 'package:covstats/features/world_map/widgets/countries/world_map_top_three_countries_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorldMapTopThreeCountriesPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BaseWidget<AllCountriesSortedByCasesWidget>(
          model: AllCountriesSortedByCasesWidget(api: Provider.of(context)),
          onModelReady: (model) => model.getAllCountriesSortedByCases(),
          builder: (context, model, child) => model.busy
              ? Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : WorldMapTopThreeCountriesContent(
                  countries: model.allCountriesSortedByCases));
}
