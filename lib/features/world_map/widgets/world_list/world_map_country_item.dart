import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class WorldMapCountriesListItems extends StatelessWidget {
  const WorldMapCountriesListItems({
    Key key,
    @required this.index,
    @required this.countries,
  }) : super(key: key);

  final int index;
  final BuiltList<CountriesModel> countries;

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat.decimalPattern();
    var longFormatter = NumberFormat.compact();

    return Column(
      children: <Widget>[
        ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CountryDetailView(countries[index]))),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                width: 50.0,
                height: 30.0,
                imageUrl: countries[index].countryInfo.flag,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            title: countries[index].country.text.bold.make(),
            subtitle:
                '${longFormatter.format(countries[index].todayCases)} - cases reported today'
                    .text
                    .make(),
            trailing: formatter.format(countries[index].cases).text.make()),
        Divider(),
      ],
    );
  }
}
