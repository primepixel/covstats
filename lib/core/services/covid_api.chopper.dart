// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$CovidApi extends CovidApi {
  _$CovidApi([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CovidApi;

  @override
  Future<Response<OverallInfoModel>> getOverallInfo() {
    final $url = 'all';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<OverallInfoModel, OverallInfoModel>($request);
  }

  @override
  Future<Response<BuiltList<CountriesModel>>> getAllCountriesSortedByCases() {
    final $url = 'countries?sort=cases';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<CountriesModel>, CountriesModel>($request);
  }

  @override
  Future<Response<BuiltList<CountriesModel>>> getAllCountries() {
    final $url = 'countries';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<CountriesModel>, CountriesModel>($request);
  }
}
