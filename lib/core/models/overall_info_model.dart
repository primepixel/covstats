import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'overall_info_model.g.dart';

abstract class OverallInfoModel
    implements Built<OverallInfoModel, OverallInfoModelBuilder> {
  OverallInfoModel._();

  double get updated;

  double get cases;

  int get todayCases;

  double get deaths;

  int get todayDeaths;

  double get recovered;

  double get active;

  double get critical;

  int get casesPerOneMillion;

  int get deathsPerOneMillion;

  double get tests;

  double get testsPerOneMillion;

  int get affectedCountries;

  factory OverallInfoModel([void Function(OverallInfoModelBuilder) updates]) =
      _$OverallInfoModel;

  static Serializer<OverallInfoModel> get serializer =>
      _$overallInfoModelSerializer;
}
