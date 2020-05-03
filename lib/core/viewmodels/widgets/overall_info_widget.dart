import 'package:covstats/core/models/overall_info_model.dart';
import 'package:covstats/core/services/covid_api.dart';
import 'package:flutter/foundation.dart';

import '../base_model.dart';

class OverallInfoWidget extends BaseModel {
  CovidApi _api;

  OverallInfoWidget({@required CovidApi api}) : _api = api;

  OverallInfoModel overallInfoModel;

  Future getOverallInfo() async {
    setBusy(true);

    try {
      await _api.getOverallInfo().then((response) {
        overallInfoModel = response.body;
      });
    } catch (e) {
      setErrorMessage(e);
    }
    setBusy(false);
  }
}
