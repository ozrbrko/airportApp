// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airports_detail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AirportsDetailViewModel on _AirportsDetailViewModel, Store {
  late final _$airportsDetailFutureAtom = Atom(
      name: '_AirportsDetailViewModel.airportsDetailFuture', context: context);

  @override
  ObservableFuture<AirportsDetailModel?>? get airportsDetailFuture {
    _$airportsDetailFutureAtom.reportRead();
    return super.airportsDetailFuture;
  }

  @override
  set airportsDetailFuture(ObservableFuture<AirportsDetailModel?>? value) {
    _$airportsDetailFutureAtom.reportWrite(value, super.airportsDetailFuture,
        () {
      super.airportsDetailFuture = value;
    });
  }

  late final _$airportsModelListAtom = Atom(
      name: '_AirportsDetailViewModel.airportsModelList', context: context);

  @override
  ObservableList<AirportsDetailModel?>? get airportsModelList {
    _$airportsModelListAtom.reportRead();
    return super.airportsModelList;
  }

  @override
  set airportsModelList(ObservableList<AirportsDetailModel?>? value) {
    _$airportsModelListAtom.reportWrite(value, super.airportsModelList, () {
      super.airportsModelList = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: '_AirportsDetailViewModel.pageState', context: context);

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

  late final _$getAirportsDetailDatasAsyncAction = AsyncAction(
      '_AirportsDetailViewModel.getAirportsDetailDatas',
      context: context);

  @override
  Future<dynamic> getAirportsDetailDatas() {
    return _$getAirportsDetailDatasAsyncAction
        .run(() => super.getAirportsDetailDatas());
  }

  @override
  String toString() {
    return '''
airportsDetailFuture: ${airportsDetailFuture},
airportsModelList: ${airportsModelList},
pageState: ${pageState}
    ''';
  }
}
