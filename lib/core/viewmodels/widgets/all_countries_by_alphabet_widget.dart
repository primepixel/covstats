import 'package:built_collection/built_collection.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:covstats/core/services/covid_api.dart';
import 'package:flutter/foundation.dart';

import '../base_model.dart';

class AllCountriesByAlphabetWidget extends BaseModel {
  CovidApi _api;

  AllCountriesByAlphabetWidget({@required CovidApi api}) : _api = api;

  BuiltList<CountriesModel> allCountriesByName;

  Future getAllCountriesSortedByName() async {
    setBusy(true);

    try {
      await _api.getAllCountries().then((response) {
        allCountriesByName = response.body;
      });
    } catch (e) {
      setErrorMessage(e);
    }

    setBusy(false);
  }
}
