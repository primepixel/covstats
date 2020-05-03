import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [])
final Serializers serializers = _$serializers;

Serializers standardSerializer =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
