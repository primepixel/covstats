// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountriesModel> _$countriesModelSerializer =
    new _$CountriesModelSerializer();
Serializer<CountryInfo> _$countryInfoSerializer = new _$CountryInfoSerializer();

class _$CountriesModelSerializer
    implements StructuredSerializer<CountriesModel> {
  @override
  final Iterable<Type> types = const [CountriesModel, _$CountriesModel];
  @override
  final String wireName = 'CountriesModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CountriesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'countryInfo',
      serializers.serialize(object.countryInfo,
          specifiedType: const FullType(CountryInfo)),
      'cases',
      serializers.serialize(object.cases,
          specifiedType: const FullType(double)),
      'todayCases',
      serializers.serialize(object.todayCases,
          specifiedType: const FullType(int)),
      'deaths',
      serializers.serialize(object.deaths, specifiedType: const FullType(int)),
      'todayDeaths',
      serializers.serialize(object.todayDeaths,
          specifiedType: const FullType(int)),
      'recovered',
      serializers.serialize(object.recovered,
          specifiedType: const FullType(int)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(int)),
      'critical',
      serializers.serialize(object.critical,
          specifiedType: const FullType(int)),
      'casesPerOneMillion',
      serializers.serialize(object.casesPerOneMillion,
          specifiedType: const FullType(int)),
      'deathsPerOneMillion',
      serializers.serialize(object.deathsPerOneMillion,
          specifiedType: const FullType(int)),
      'updated',
      serializers.serialize(object.updated,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CountriesModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountriesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countryInfo':
          result.countryInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(CountryInfo)) as CountryInfo);
          break;
        case 'cases':
          result.cases = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'todayCases':
          result.todayCases = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deaths':
          result.deaths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'todayDeaths':
          result.todayDeaths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'recovered':
          result.recovered = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'critical':
          result.critical = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'casesPerOneMillion':
          result.casesPerOneMillion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deathsPerOneMillion':
          result.deathsPerOneMillion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryInfoSerializer implements StructuredSerializer<CountryInfo> {
  @override
  final Iterable<Type> types = const [CountryInfo, _$CountryInfo];
  @override
  final String wireName = 'CountryInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, CountryInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.iso2 != null) {
      result
        ..add('iso2')
        ..add(serializers.serialize(object.iso2,
            specifiedType: const FullType(String)));
    }
    if (object.iso3 != null) {
      result
        ..add('iso3')
        ..add(serializers.serialize(object.iso3,
            specifiedType: const FullType(String)));
    }
    if (object.country != null) {
      result
        ..add('country')
        ..add(serializers.serialize(object.country,
            specifiedType: const FullType(String)));
    }
    if (object.lat != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(object.lat,
            specifiedType: const FullType(double)));
    }
    if (object.long != null) {
      result
        ..add('long')
        ..add(serializers.serialize(object.long,
            specifiedType: const FullType(double)));
    }
    if (object.flag != null) {
      result
        ..add('flag')
        ..add(serializers.serialize(object.flag,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CountryInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iso2':
          result.iso2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso3':
          result.iso3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CountriesModel extends CountriesModel {
  @override
  final String country;
  @override
  final CountryInfo countryInfo;
  @override
  final double cases;
  @override
  final int todayCases;
  @override
  final int deaths;
  @override
  final int todayDeaths;
  @override
  final int recovered;
  @override
  final int active;
  @override
  final int critical;
  @override
  final int casesPerOneMillion;
  @override
  final int deathsPerOneMillion;
  @override
  final double updated;

  factory _$CountriesModel([void Function(CountriesModelBuilder) updates]) =>
      (new CountriesModelBuilder()..update(updates)).build();

  _$CountriesModel._(
      {this.country,
      this.countryInfo,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.updated})
      : super._() {
    if (country == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'country');
    }
    if (countryInfo == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'countryInfo');
    }
    if (cases == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'cases');
    }
    if (todayCases == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'todayCases');
    }
    if (deaths == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'deaths');
    }
    if (todayDeaths == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'todayDeaths');
    }
    if (recovered == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'recovered');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'active');
    }
    if (critical == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'critical');
    }
    if (casesPerOneMillion == null) {
      throw new BuiltValueNullFieldError(
          'CountriesModel', 'casesPerOneMillion');
    }
    if (deathsPerOneMillion == null) {
      throw new BuiltValueNullFieldError(
          'CountriesModel', 'deathsPerOneMillion');
    }
    if (updated == null) {
      throw new BuiltValueNullFieldError('CountriesModel', 'updated');
    }
  }

  @override
  CountriesModel rebuild(void Function(CountriesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountriesModelBuilder toBuilder() =>
      new CountriesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountriesModel &&
        country == other.country &&
        countryInfo == other.countryInfo &&
        cases == other.cases &&
        todayCases == other.todayCases &&
        deaths == other.deaths &&
        todayDeaths == other.todayDeaths &&
        recovered == other.recovered &&
        active == other.active &&
        critical == other.critical &&
        casesPerOneMillion == other.casesPerOneMillion &&
        deathsPerOneMillion == other.deathsPerOneMillion &&
        updated == other.updated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, country.hashCode),
                                                countryInfo.hashCode),
                                            cases.hashCode),
                                        todayCases.hashCode),
                                    deaths.hashCode),
                                todayDeaths.hashCode),
                            recovered.hashCode),
                        active.hashCode),
                    critical.hashCode),
                casesPerOneMillion.hashCode),
            deathsPerOneMillion.hashCode),
        updated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountriesModel')
          ..add('country', country)
          ..add('countryInfo', countryInfo)
          ..add('cases', cases)
          ..add('todayCases', todayCases)
          ..add('deaths', deaths)
          ..add('todayDeaths', todayDeaths)
          ..add('recovered', recovered)
          ..add('active', active)
          ..add('critical', critical)
          ..add('casesPerOneMillion', casesPerOneMillion)
          ..add('deathsPerOneMillion', deathsPerOneMillion)
          ..add('updated', updated))
        .toString();
  }
}

class CountriesModelBuilder
    implements Builder<CountriesModel, CountriesModelBuilder> {
  _$CountriesModel _$v;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  CountryInfoBuilder _countryInfo;
  CountryInfoBuilder get countryInfo =>
      _$this._countryInfo ??= new CountryInfoBuilder();
  set countryInfo(CountryInfoBuilder countryInfo) =>
      _$this._countryInfo = countryInfo;

  double _cases;
  double get cases => _$this._cases;
  set cases(double cases) => _$this._cases = cases;

  int _todayCases;
  int get todayCases => _$this._todayCases;
  set todayCases(int todayCases) => _$this._todayCases = todayCases;

  int _deaths;
  int get deaths => _$this._deaths;
  set deaths(int deaths) => _$this._deaths = deaths;

  int _todayDeaths;
  int get todayDeaths => _$this._todayDeaths;
  set todayDeaths(int todayDeaths) => _$this._todayDeaths = todayDeaths;

  int _recovered;
  int get recovered => _$this._recovered;
  set recovered(int recovered) => _$this._recovered = recovered;

  int _active;
  int get active => _$this._active;
  set active(int active) => _$this._active = active;

  int _critical;
  int get critical => _$this._critical;
  set critical(int critical) => _$this._critical = critical;

  int _casesPerOneMillion;
  int get casesPerOneMillion => _$this._casesPerOneMillion;
  set casesPerOneMillion(int casesPerOneMillion) =>
      _$this._casesPerOneMillion = casesPerOneMillion;

  int _deathsPerOneMillion;
  int get deathsPerOneMillion => _$this._deathsPerOneMillion;
  set deathsPerOneMillion(int deathsPerOneMillion) =>
      _$this._deathsPerOneMillion = deathsPerOneMillion;

  double _updated;
  double get updated => _$this._updated;
  set updated(double updated) => _$this._updated = updated;

  CountriesModelBuilder();

  CountriesModelBuilder get _$this {
    if (_$v != null) {
      _country = _$v.country;
      _countryInfo = _$v.countryInfo?.toBuilder();
      _cases = _$v.cases;
      _todayCases = _$v.todayCases;
      _deaths = _$v.deaths;
      _todayDeaths = _$v.todayDeaths;
      _recovered = _$v.recovered;
      _active = _$v.active;
      _critical = _$v.critical;
      _casesPerOneMillion = _$v.casesPerOneMillion;
      _deathsPerOneMillion = _$v.deathsPerOneMillion;
      _updated = _$v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountriesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountriesModel;
  }

  @override
  void update(void Function(CountriesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountriesModel build() {
    _$CountriesModel _$result;
    try {
      _$result = _$v ??
          new _$CountriesModel._(
              country: country,
              countryInfo: countryInfo.build(),
              cases: cases,
              todayCases: todayCases,
              deaths: deaths,
              todayDeaths: todayDeaths,
              recovered: recovered,
              active: active,
              critical: critical,
              casesPerOneMillion: casesPerOneMillion,
              deathsPerOneMillion: deathsPerOneMillion,
              updated: updated);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'countryInfo';
        countryInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountriesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CountryInfo extends CountryInfo {
  @override
  final int id;
  @override
  final String iso2;
  @override
  final String iso3;
  @override
  final String country;
  @override
  final double lat;
  @override
  final double long;
  @override
  final String flag;

  factory _$CountryInfo([void Function(CountryInfoBuilder) updates]) =>
      (new CountryInfoBuilder()..update(updates)).build();

  _$CountryInfo._(
      {this.id,
      this.iso2,
      this.iso3,
      this.country,
      this.lat,
      this.long,
      this.flag})
      : super._();

  @override
  CountryInfo rebuild(void Function(CountryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryInfoBuilder toBuilder() => new CountryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryInfo &&
        id == other.id &&
        iso2 == other.iso2 &&
        iso3 == other.iso3 &&
        country == other.country &&
        lat == other.lat &&
        long == other.long &&
        flag == other.flag;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), iso2.hashCode), iso3.hashCode),
                    country.hashCode),
                lat.hashCode),
            long.hashCode),
        flag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryInfo')
          ..add('id', id)
          ..add('iso2', iso2)
          ..add('iso3', iso3)
          ..add('country', country)
          ..add('lat', lat)
          ..add('long', long)
          ..add('flag', flag))
        .toString();
  }
}

class CountryInfoBuilder implements Builder<CountryInfo, CountryInfoBuilder> {
  _$CountryInfo _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _iso2;
  String get iso2 => _$this._iso2;
  set iso2(String iso2) => _$this._iso2 = iso2;

  String _iso3;
  String get iso3 => _$this._iso3;
  set iso3(String iso3) => _$this._iso3 = iso3;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _long;
  double get long => _$this._long;
  set long(double long) => _$this._long = long;

  String _flag;
  String get flag => _$this._flag;
  set flag(String flag) => _$this._flag = flag;

  CountryInfoBuilder();

  CountryInfoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _iso2 = _$v.iso2;
      _iso3 = _$v.iso3;
      _country = _$v.country;
      _lat = _$v.lat;
      _long = _$v.long;
      _flag = _$v.flag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountryInfo;
  }

  @override
  void update(void Function(CountryInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryInfo build() {
    final _$result = _$v ??
        new _$CountryInfo._(
            id: id,
            iso2: iso2,
            iso3: iso3,
            country: country,
            lat: lat,
            long: long,
            flag: flag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
