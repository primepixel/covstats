import 'package:cached_network_image/cached_network_image.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class CountryDetailView extends StatelessWidget {
  final CountriesModel country;

  CountryDetailView(this.country);

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat.decimalPattern();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        width: 80.0,
                        height: 50.0,
                        imageUrl: country.countryInfo.flag,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    '${country.country}'.text.bold.size(22.0).make(),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300], width: 1.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      'Cases'.text.bold.size(16.0).make(),
                      SizedBox(height: 10.0),
                      formatter
                          .format(country.cases)
                          .text
                          .color(Colors.green)
                          .bold
                          .size(36.0)
                          .make(),
                      '${formatter.format(country.todayCases)} cases reported today'
                          .text
                          .color(Colors.grey[400])
                          .make()
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300], width: 1.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      'Deaths'.text.bold.size(16.0).make(),
                      SizedBox(height: 10.0),
                      formatter
                          .format(country.deaths)
                          .text
                          .color(Colors.red)
                          .bold
                          .size(36.0)
                          .make(),
                      '${formatter.format(country.todayDeaths)} deaths reported today'
                          .text
                          .color(Colors.grey[400])
                          .make()
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300], width: 1.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      'Recovered'.text.bold.size(16.0).make(),
                      SizedBox(height: 10.0),
                      formatter
                          .format(country.recovered)
                          .text
                          .color(Colors.blue)
                          .bold
                          .size(36.0)
                          .make(),
                      '${formatter.format(country.active)} active cases'
                          .text
                          .color(Colors.grey[400])
                          .make(),
                      '${formatter.format(country.critical)} critical cases'
                          .text
                          .color(Colors.grey[400])
                          .make()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
