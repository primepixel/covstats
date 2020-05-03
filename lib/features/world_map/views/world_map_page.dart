import 'package:covstats/features/world_map/widgets/countries/world_map_top_three_countries_panel.dart';
import 'package:covstats/features/world_map/widgets/world_list/world_map_countries_list_panel.dart';
import 'package:flutter/material.dart';

class WorldMapPage extends StatelessWidget {
  const WorldMapPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                WorldMapTopThreeCountriesPanel(),
                WorldMapCountriesPanel()
              ],
            ),
          ),
        ),
      );
}
