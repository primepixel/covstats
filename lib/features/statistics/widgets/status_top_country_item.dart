import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:covstats/features/country_detail/views/country_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class StatisticsPageBuildTopCountryItem extends StatelessWidget {
  const StatisticsPageBuildTopCountryItem({
    Key key,
    @required this.index,
    @required this.countries,
  }) : super(key: key);

  final int index;
  final BuiltList<CountriesModel> countries;

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat.decimalPattern();

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200], width: 1.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.only(bottom: 15.0),
      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: ListTile(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CountryDetailView(countries[index]))),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            width: 80.0,
            height: 50.0,
            imageUrl: countries[index].countryInfo.flag,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        title: countries[index].country.text.bold.make(),
        subtitle: '${countries[index].todayDeaths} - cases reported today'
            .text
            .make(),
        trailing: formatter.format(countries[index].cases).text.make(),
      ),
    );
  }
}
