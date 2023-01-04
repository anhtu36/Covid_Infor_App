class WorldStateModel {
 late int _updated;
 late int _cases;
 late int _todayCases;
 late int _deaths;
 late int _todayDeaths;
 late int _recovered;
 late int _todayRecovered;
 late int _active;
 late int _critical;
 late int _casesPerOneMillion;
 late double _deathsPerOneMillion;
 late int _tests;
 late double _testsPerOneMillion;
 late int _population;
 late int _oneCasePerPeople;
 late int _oneDeathPerPeople;
 late int _oneTestPerPeople;
  late double _activePerOneMillion;
 late double _recoveredPerOneMillion;
 late double _criticalPerOneMillion;
 late int _affectedCountries;

  WorldStateModel(
      {required int updated,
      required int cases,
     required int todayCases,
     required int deaths,
     required int todayDeaths,
     required int recovered,
     required int todayRecovered,
     required int active,
     required int critical,
     required int casesPerOneMillion,
     required double deathsPerOneMillion,
     required int tests,
     required double testsPerOneMillion,
     required int population,
     required int oneCasePerPeople,
     required int oneDeathPerPeople,
      required int oneTestPerPeople,
     required double activePerOneMillion,
     required double recoveredPerOneMillion,
     required double criticalPerOneMillion,
     required int affectedCountries}) {
    this._updated = updated;
    this._cases = cases;
    this._todayCases = todayCases;
    this._deaths = deaths;
    this._todayDeaths = todayDeaths;
    this._recovered = recovered;
    this._todayRecovered = todayRecovered;
    this._active = active;
    this._critical = critical;
    this._casesPerOneMillion = casesPerOneMillion;
    this._deathsPerOneMillion = deathsPerOneMillion;
    this._tests = tests;
    this._testsPerOneMillion = testsPerOneMillion;
    this._population = population;
    this._oneCasePerPeople = oneCasePerPeople;
    this._oneDeathPerPeople = oneDeathPerPeople;
    this._oneTestPerPeople = oneTestPerPeople;
    this._activePerOneMillion = activePerOneMillion;
    this._recoveredPerOneMillion = recoveredPerOneMillion;
    this._criticalPerOneMillion = criticalPerOneMillion;
    this._affectedCountries = affectedCountries;
  }

  int get updated => _updated;
  set updated(int updated) => _updated = updated;
  int get cases => _cases;
  set cases(int cases) => _cases = cases;
  int get todayCases => _todayCases;
  set todayCases(int todayCases) => _todayCases = todayCases;
  int get deaths => _deaths;
  set deaths(int deaths) => _deaths = deaths;
  int get todayDeaths => _todayDeaths;
  set todayDeaths(int todayDeaths) => _todayDeaths = todayDeaths;
  int get recovered => _recovered;
  set recovered(int recovered) => _recovered = recovered;
  int get todayRecovered => _todayRecovered;
  set todayRecovered(int todayRecovered) => _todayRecovered = todayRecovered;
  int get active => _active;
  set active(int active) => _active = active;
  int get critical => _critical;
  set critical(int critical) => _critical = critical;
  int get casesPerOneMillion => _casesPerOneMillion;
  set casesPerOneMillion(int casesPerOneMillion) =>
      _casesPerOneMillion = casesPerOneMillion;
  double get deathsPerOneMillion => _deathsPerOneMillion;
  set deathsPerOneMillion(double deathsPerOneMillion) =>
      _deathsPerOneMillion = deathsPerOneMillion;
  int get tests => _tests;
  set tests(int tests) => _tests = tests;
  double get testsPerOneMillion => _testsPerOneMillion;
  set testsPerOneMillion(double testsPerOneMillion) =>
      _testsPerOneMillion = testsPerOneMillion;
  int get population => _population;
  set population(int population) => _population = population;
  int get oneCasePerPeople => _oneCasePerPeople;
  set oneCasePerPeople(int oneCasePerPeople) =>
      _oneCasePerPeople = oneCasePerPeople;
  int get oneDeathPerPeople => _oneDeathPerPeople;
  set oneDeathPerPeople(int oneDeathPerPeople) =>
      _oneDeathPerPeople = oneDeathPerPeople;
  int get oneTestPerPeople => _oneTestPerPeople;
  set oneTestPerPeople(int oneTestPerPeople) =>
      _oneTestPerPeople = oneTestPerPeople;
  double get activePerOneMillion => _activePerOneMillion;
  set activePerOneMillion(double activePerOneMillion) =>
      _activePerOneMillion = activePerOneMillion;
  double get recoveredPerOneMillion => _recoveredPerOneMillion;
  set recoveredPerOneMillion(double recoveredPerOneMillion) =>
      _recoveredPerOneMillion = recoveredPerOneMillion;
  double get criticalPerOneMillion => _criticalPerOneMillion;
  set criticalPerOneMillion(double criticalPerOneMillion) =>
      _criticalPerOneMillion = criticalPerOneMillion;
  int get affectedCountries => _affectedCountries;
  set affectedCountries(int affectedCountries) =>
      _affectedCountries = affectedCountries;

  WorldStateModel.fromJson(Map<String, dynamic> json) {
    _updated = json['updated'];
    _cases = json['cases'];
    _todayCases = json['todayCases'];
    _deaths = json['deaths'];
    _todayDeaths = json['todayDeaths'];
    _recovered = json['recovered'];
    _todayRecovered = json['todayRecovered'];
    _active = json['active'];
    _critical = json['critical'];
    _casesPerOneMillion = json['casesPerOneMillion'];
    _deathsPerOneMillion = json['deathsPerOneMillion'];
    _tests = json['tests'];
    _testsPerOneMillion = json['testsPerOneMillion'];
    _population = json['population'];
    _oneCasePerPeople = json['oneCasePerPeople'];
    _oneDeathPerPeople = json['oneDeathPerPeople'];
    _oneTestPerPeople = json['oneTestPerPeople'];
    _activePerOneMillion = json['activePerOneMillion'];
    _recoveredPerOneMillion = json['recoveredPerOneMillion'];
    _criticalPerOneMillion = json['criticalPerOneMillion'];
    _affectedCountries = json['affectedCountries'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated'] = this._updated;
    data['cases'] = this._cases;
    data['todayCases'] = this._todayCases;
    data['deaths'] = this._deaths;
    data['todayDeaths'] = this._todayDeaths;
    data['recovered'] = this._recovered;
    data['todayRecovered'] = this._todayRecovered;
    data['active'] = this._active;
    data['critical'] = this._critical;
    data['casesPerOneMillion'] = this._casesPerOneMillion;
    data['deathsPerOneMillion'] = this._deathsPerOneMillion;
    data['tests'] = this._tests;
    data['testsPerOneMillion'] = this._testsPerOneMillion;
    data['population'] = this._population;
    data['oneCasePerPeople'] = this._oneCasePerPeople;
    data['oneDeathPerPeople'] = this._oneDeathPerPeople;
    data['oneTestPerPeople'] = this._oneTestPerPeople;
    data['activePerOneMillion'] = this._activePerOneMillion;
    data['recoveredPerOneMillion'] = this._recoveredPerOneMillion;
    data['criticalPerOneMillion'] = this._criticalPerOneMillion;
    data['affectedCountries'] = this._affectedCountries;
    return data;
  }
}
