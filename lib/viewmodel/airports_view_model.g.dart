// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airports_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AirportsViewModel on _AirportsViewModel, Store {
  late final _$airportsFutureAtom =
      Atom(name: '_AirportsViewModel.airportsFuture', context: context);

  @override
  ObservableFuture<AirportsModel?>? get airportsFuture {
    _$airportsFutureAtom.reportRead();
    return super.airportsFuture;
  }

  @override
  set airportsFuture(ObservableFuture<AirportsModel?>? value) {
    _$airportsFutureAtom.reportWrite(value, super.airportsFuture, () {
      super.airportsFuture = value;
    });
  }

  late final _$airportsResultListAtom =
      Atom(name: '_AirportsViewModel.airportsResultList', context: context);

  @override
  ObservableList<AirportsResult?>? get airportsResultList {
    _$airportsResultListAtom.reportRead();
    return super.airportsResultList;
  }

  @override
  set airportsResultList(ObservableList<AirportsResult?>? value) {
    _$airportsResultListAtom.reportWrite(value, super.airportsResultList, () {
      super.airportsResultList = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: '_AirportsViewModel.pageState', context: context);

  @override
  PageState get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageState value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  late final _$getAirportsDatasAsyncAction =
      AsyncAction('_AirportsViewModel.getAirportsDatas', context: context);

  @override
  Future<dynamic> getAirportsDatas(String param) {
    return _$getAirportsDatasAsyncAction
        .run(() => super.getAirportsDatas(param));
  }

  @override
  String toString() {
    return '''
airportsFuture: ${airportsFuture},
airportsResultList: ${airportsResultList},
pageState: ${pageState}
    ''';
  }
}
