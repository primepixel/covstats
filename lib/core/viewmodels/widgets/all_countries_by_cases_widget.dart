import 'package:built_collection/built_collection.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:covstats/core/services/covid_api.dart';
import 'package:flutter/foundation.dart';

import '../base_model.dart';

class AllCountriesSortedByCasesWidget extends BaseModel {
  CovidApi _api;

  AllCountriesSortedByCasesWidget({@required CovidApi api}) : _api = api;

  BuiltList<CountriesModel> allCountriesSortedByCases;

  Future getAllCountriesSortedByCases() async {
    setBusy(true);

    try {
      await _api.getAllCountriesSortedByCases().then((response) {
        allCountriesSortedByCases = response.body;
      });
    } catch (e) {
      setErrorMessage(e);
    }

    setBusy(false);
  }
}
