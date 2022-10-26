
import 'package:airportal/component/constant/enum.dart';
import 'package:airportal/service/service.dart';
import 'package:mobx/mobx.dart';

import '../model/airports_detail_model.dart';

part 'airports_detail_view_model.g.dart';


class AirportsDetailViewModel = _AirportsDetailViewModel with _$AirportsDetailViewModel;

abstract class _AirportsDetailViewModel with Store {

  AirportsDetailService? _service;

  void init(){
    _service = AirportsDetailService();
  }

  @observable
  ObservableFuture<AirportsDetailModel?>? airportsDetailFuture;

  @observable
  ObservableList<AirportsDetailModel?>? airportsModelList = ObservableList<AirportsDetailModel>();

  @observable
  PageState pageState = PageState.NORMAL;

  @action
  Future getAirportsDetailDatas() async {
    try{
      pageState = PageState.LOADING;

      airportsDetailFuture = ObservableFuture(_service!.getAirportsDetailData());
      airportsDetailFuture!.then((value){
        pageState = PageState.SUCCESS;
        airportsModelList?.add(value);
      });
    } catch (e) {
      pageState = PageState.ERROR;
    }
  }

}