import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/services/covid_api.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: CovidApi.create())
];

List<SingleChildWidget> dependentServices = [];

List<SingleChildWidget> uiConsumableProviders = [];
