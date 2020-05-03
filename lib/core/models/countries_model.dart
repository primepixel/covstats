import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'countries_model.g.dart';

abstract class CountriesModel
    implements Built<CountriesModel, CountriesModelBuilder> {
  CountriesModel._();

  String get country;

  CountryInfo get countryInfo;

  double get cases;

  int get todayCases;

  int get deaths;

  int get todayDeaths;

  int get recovered;

  int get active;

  int get critical;

  int get casesPerOneMillion;

  int get deathsPerOneMillion;

  double get updated;

  factory CountriesModel([void Function(CountriesModelBuilder) updates]) =
      _$CountriesModel;

  static Serializer<CountriesModel> get serializer =>
      _$countriesModelSerializer;
}

abstract class CountryInfo implements Built<CountryInfo, CountryInfoBuilder> {
  CountryInfo._();

  @nullable
  int get id;

  @nullable
  String get iso2;

  @nullable
  String get iso3;

  @nullable
  String get country;

  @nullable
  double get lat;

  @nullable
  double get long;

  @nullable
  String get flag;

  factory CountryInfo([void Function(CountryInfoBuilder) updates]) =
      _$CountryInfo;

  static Serializer<CountryInfo> get serializer => _$countryInfoSerializer;
}
