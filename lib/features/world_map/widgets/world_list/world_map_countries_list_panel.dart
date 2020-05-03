import 'package:covstats/core/viewmodels/widgets/all_countries_by_alphabet_widget.dart';
import 'package:covstats/features/shared/base_widget.dart';
import 'package:covstats/features/world_map/widgets/world_list/world_map_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorldMapCountriesPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BaseWidget<AllCountriesByAlphabetWidget>(
        model: AllCountriesByAlphabetWidget(api: Provider.of(context)),
        onModelReady: (model) => model.getAllCountriesSortedByName(),
        builder: (context, model, child) => model.busy
            ? Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : WorldMapCountriesByNameContent(
                countries: model.allCountriesByName),
      );
}
