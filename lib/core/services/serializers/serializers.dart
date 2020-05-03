import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:covstats/core/models/overall_info_model.dart';

part 'serializers.g.dart';

@SerializersFor(const [OverallInfoModel, CountriesModel])
final Serializers serializers = _$serializers;

Serializers standardSerializer =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
