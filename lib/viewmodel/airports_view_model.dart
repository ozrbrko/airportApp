import 'package:airportal/service/service.dart';
import 'package:mobx/mobx.dart';
import '../component/constant/enum.dart';
import '../model/airports_model.dart';
part 'airports_view_model.g.dart';

class AirportsViewModel = _AirportsViewModel with _$AirportsViewModel;

abstract class _AirportsViewModel with Store {
  AirportsService? _service;

  void init() {
    _service = AirportsService();
  }

  @observable
  ObservableFuture<AirportsModel?>? airportsFuture;

  @observable
  ObservableList<AirportsResult?>? airportsResultList =
  ObservableList<AirportsResult>();

  @observable
  PageState pageState = PageState.NORMAL;

  @action
  Future getAirportsDatas() async {
    try {
      pageState = PageState.LOADING;

      airportsFuture = ObservableFuture(_service!.getAirportsData());
      airportsFuture!.then((value) {
        value!.items!.forEach((element) {
          airportsResultList!.add(element);
        });
        print("Listenin countu => "+airportsResultList!.length.toString());
        // coronaResultList!.addAll(coronaModel!.result!);

        pageState = PageState.SUCCESS;
      });
    } catch (e) {
      pageState = PageState.ERROR;
    }
  }


}
