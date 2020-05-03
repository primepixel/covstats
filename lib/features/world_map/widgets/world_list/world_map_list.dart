import 'package:built_collection/built_collection.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:covstats/features/shared/animations/fade_in_animation.dart';
import 'package:covstats/features/world_map/widgets/world_list/world_map_country_item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WorldMapCountriesByNameContent extends StatelessWidget {
  const WorldMapCountriesByNameContent({
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
              'Rest of the world'.text.size(18.0).bold.make(),
              SizedBox(height: 5.0),
              'List of all Affected countries'
                  .text
                  .color(Colors.grey[400])
                  .make(),
              SizedBox(height: 20.0),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: countries.length,
                itemBuilder: (context, index) => WorldMapCountriesListItems(
                    index: index, countries: countries),
              )
            ],
          ),
        ),
      ),
    );
  }
}
