// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overall_info_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OverallInfoModel> _$overallInfoModelSerializer =
    new _$OverallInfoModelSerializer();

class _$OverallInfoModelSerializer
    implements StructuredSerializer<OverallInfoModel> {
  @override
  final Iterable<Type> types = const [OverallInfoModel, _$OverallInfoModel];
  @override
  final String wireName = 'OverallInfoModel';

  @override
  Iterable<Object> serialize(Serializers serializers, OverallInfoModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'updated',
      serializers.serialize(object.updated,
          specifiedType: const FullType(double)),
      'cases',
      serializers.serialize(object.cases,
          specifiedType: const FullType(double)),
      'todayCases',
      serializers.serialize(object.todayCases,
          specifiedType: const FullType(int)),
      'deaths',
      serializers.serialize(object.deaths,
          specifiedType: const FullType(double)),
      'todayDeaths',
      serializers.serialize(object.todayDeaths,
          specifiedType: const FullType(int)),
      'recovered',
      serializers.serialize(object.recovered,
          specifiedType: const FullType(double)),
      'active',
      serializers.serialize(object.active,
          specifiedType: const FullType(double)),
      'critical',
      serializers.serialize(object.critical,
          specifiedType: const FullType(double)),
      'casesPerOneMillion',
      serializers.serialize(object.casesPerOneMillion,
          specifiedType: const FullType(int)),
      'deathsPerOneMillion',
      serializers.serialize(object.deathsPerOneMillion,
          specifiedType: const FullType(int)),
      'tests',
      serializers.serialize(object.tests,
          specifiedType: const FullType(double)),
      'testsPerOneMillion',
      serializers.serialize(object.testsPerOneMillion,
          specifiedType: const FullType(double)),
      'affectedCountries',
      serializers.serialize(object.affectedCountries,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  OverallInfoModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OverallInfoModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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
              specifiedType: const FullType(double)) as double;
          break;
        case 'todayDeaths':
          result.todayDeaths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'recovered':
          result.recovered = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'critical':
          result.critical = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'casesPerOneMillion':
          result.casesPerOneMillion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deathsPerOneMillion':
          result.deathsPerOneMillion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tests':
          result.tests = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'testsPerOneMillion':
          result.testsPerOneMillion = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'affectedCountries':
          result.affectedCountries = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$OverallInfoModel extends OverallInfoModel {
  @override
  final double updated;
  @override
  final double cases;
  @override
  final int todayCases;
  @override
  final double deaths;
  @override
  final int todayDeaths;
  @override
  final double recovered;
  @override
  final double active;
  @override
  final double critical;
  @override
  final int casesPerOneMillion;
  @override
  final int deathsPerOneMillion;
  @override
  final double tests;
  @override
  final double testsPerOneMillion;
  @override
  final int affectedCountries;

  factory _$OverallInfoModel(
          [void Function(OverallInfoModelBuilder) updates]) =>
      (new OverallInfoModelBuilder()..update(updates)).build();

  _$OverallInfoModel._(
      {this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.affectedCountries})
      : super._() {
    if (updated == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'updated');
    }
    if (cases == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'cases');
    }
    if (todayCases == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'todayCases');
    }
    if (deaths == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'deaths');
    }
    if (todayDeaths == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'todayDeaths');
    }
    if (recovered == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'recovered');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'active');
    }
    if (critical == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'critical');
    }
    if (casesPerOneMillion == null) {
      throw new BuiltValueNullFieldError(
          'OverallInfoModel', 'casesPerOneMillion');
    }
    if (deathsPerOneMillion == null) {
      throw new BuiltValueNullFieldError(
          'OverallInfoModel', 'deathsPerOneMillion');
    }
    if (tests == null) {
      throw new BuiltValueNullFieldError('OverallInfoModel', 'tests');
    }
    if (testsPerOneMillion == null) {
      throw new BuiltValueNullFieldError(
          'OverallInfoModel', 'testsPerOneMillion');
    }
    if (affectedCountries == null) {
      throw new BuiltValueNullFieldError(
          'OverallInfoModel', 'affectedCountries');
    }
  }

  @override
  OverallInfoModel rebuild(void Function(OverallInfoModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OverallInfoModelBuilder toBuilder() =>
      new OverallInfoModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OverallInfoModel &&
        updated == other.updated &&
        cases == other.cases &&
        todayCases == other.todayCases &&
        deaths == other.deaths &&
        todayDeaths == other.todayDeaths &&
        recovered == other.recovered &&
        active == other.active &&
        critical == other.critical &&
        casesPerOneMillion == other.casesPerOneMillion &&
        deathsPerOneMillion == other.deathsPerOneMillion &&
        tests == other.tests &&
        testsPerOneMillion == other.testsPerOneMillion &&
        affectedCountries == other.affectedCountries;
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
                                            $jc(
                                                $jc($jc(0, updated.hashCode),
                                                    cases.hashCode),
                                                todayCases.hashCode),
                                            deaths.hashCode),
                                        todayDeaths.hashCode),
                                    recovered.hashCode),
                                active.hashCode),
                            critical.hashCode),
                        casesPerOneMillion.hashCode),
                    deathsPerOneMillion.hashCode),
                tests.hashCode),
            testsPerOneMillion.hashCode),
        affectedCountries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OverallInfoModel')
          ..add('updated', updated)
          ..add('cases', cases)
          ..add('todayCases', todayCases)
          ..add('deaths', deaths)
          ..add('todayDeaths', todayDeaths)
          ..add('recovered', recovered)
          ..add('active', active)
          ..add('critical', critical)
          ..add('casesPerOneMillion', casesPerOneMillion)
          ..add('deathsPerOneMillion', deathsPerOneMillion)
          ..add('tests', tests)
          ..add('testsPerOneMillion', testsPerOneMillion)
          ..add('affectedCountries', affectedCountries))
        .toString();
  }
}

class OverallInfoModelBuilder
    implements Builder<OverallInfoModel, OverallInfoModelBuilder> {
  _$OverallInfoModel _$v;

  double _updated;
  double get updated => _$this._updated;
  set updated(double updated) => _$this._updated = updated;

  double _cases;
  double get cases => _$this._cases;
  set cases(double cases) => _$this._cases = cases;

  int _todayCases;
  int get todayCases => _$this._todayCases;
  set todayCases(int todayCases) => _$this._todayCases = todayCases;

  double _deaths;
  double get deaths => _$this._deaths;
  set deaths(double deaths) => _$this._deaths = deaths;

  int _todayDeaths;
  int get todayDeaths => _$this._todayDeaths;
  set todayDeaths(int todayDeaths) => _$this._todayDeaths = todayDeaths;

  double _recovered;
  double get recovered => _$this._recovered;
  set recovered(double recovered) => _$this._recovered = recovered;

  double _active;
  double get active => _$this._active;
  set active(double active) => _$this._active = active;

  double _critical;
  double get critical => _$this._critical;
  set critical(double critical) => _$this._critical = critical;

  int _casesPerOneMillion;
  int get casesPerOneMillion => _$this._casesPerOneMillion;
  set casesPerOneMillion(int casesPerOneMillion) =>
      _$this._casesPerOneMillion = casesPerOneMillion;

  int _deathsPerOneMillion;
  int get deathsPerOneMillion => _$this._deathsPerOneMillion;
  set deathsPerOneMillion(int deathsPerOneMillion) =>
      _$this._deathsPerOneMillion = deathsPerOneMillion;

  double _tests;
  double get tests => _$this._tests;
  set tests(double tests) => _$this._tests = tests;

  double _testsPerOneMillion;
  double get testsPerOneMillion => _$this._testsPerOneMillion;
  set testsPerOneMillion(double testsPerOneMillion) =>
      _$this._testsPerOneMillion = testsPerOneMillion;

  int _affectedCountries;
  int get affectedCountries => _$this._affectedCountries;
  set affectedCountries(int affectedCountries) =>
      _$this._affectedCountries = affectedCountries;

  OverallInfoModelBuilder();

  OverallInfoModelBuilder get _$this {
    if (_$v != null) {
      _updated = _$v.updated;
      _cases = _$v.cases;
      _todayCases = _$v.todayCases;
      _deaths = _$v.deaths;
      _todayDeaths = _$v.todayDeaths;
      _recovered = _$v.recovered;
      _active = _$v.active;
      _critical = _$v.critical;
      _casesPerOneMillion = _$v.casesPerOneMillion;
      _deathsPerOneMillion = _$v.deathsPerOneMillion;
      _tests = _$v.tests;
      _testsPerOneMillion = _$v.testsPerOneMillion;
      _affectedCountries = _$v.affectedCountries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OverallInfoModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OverallInfoModel;
  }

  @override
  void update(void Function(OverallInfoModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OverallInfoModel build() {
    final _$result = _$v ??
        new _$OverallInfoModel._(
            updated: updated,
            cases: cases,
            todayCases: todayCases,
            deaths: deaths,
            todayDeaths: todayDeaths,
            recovered: recovered,
            active: active,
            critical: critical,
            casesPerOneMillion: casesPerOneMillion,
            deathsPerOneMillion: deathsPerOneMillion,
            tests: tests,
            testsPerOneMillion: testsPerOneMillion,
            affectedCountries: affectedCountries);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
