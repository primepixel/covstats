import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:covstats/core/constants/endpoints.dart';
import 'package:covstats/core/models/countries_model.dart';
import 'package:covstats/core/models/overall_info_model.dart';
import 'package:covstats/core/services/serializers/built_value_converter.dart';

part 'covid_api.chopper.dart';

@ChopperApi()
abstract class CovidApi extends ChopperService {
  @Get(path: Endpoints.overallInfo)
  Future<Response<OverallInfoModel>> getOverallInfo();

  @Get(path: '${Endpoints.getAllCountries}${EndpointsQuery.sortByCases}')
  Future<Response<BuiltList<CountriesModel>>> getAllCountriesSortedByCases();

  @Get(path: Endpoints.getAllCountries)
  Future<Response<BuiltList<CountriesModel>>> getAllCountries();

  static CovidApi create() {
    final client = ChopperClient(
        baseUrl: Endpoints.mainEndpoint,
        services: [_$CovidApi()],
        converter: BuiltValueConverter(),
        errorConverter: BuiltValueConverter(),
        interceptors: [HttpLoggingInterceptor()]);

    return _$CovidApi(client);
  }
}
