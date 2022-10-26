
import 'package:dio/dio.dart';

import '../component/constant/api_config.dart';
import '../model/airports_detail_model.dart';
import '../model/airports_model.dart';

class AirportsService {
  Dio? dio;

  Future<AirportsModel?> getAirportsData(String param) async {
    dio = Dio();

    // dio!.options.headers['content-Type'] = 'application/json';
    dio!.options.headers["X-RapidAPI-Key"] =
    "a6e6239405mshaca792d99e91cbdp1b1016jsneacc34f17d54";

    var parameterData = {"q": "$param"};

    try {
      Response response =
      await dio!.get(ApiConfig.getAirports, queryParameters: parameterData);

      if (response.statusCode == 200) {
        return AirportsModel.fromJson( response.data);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class AirportsDetailService{

  Dio? dio;

  Future<AirportsDetailModel?> getAirportsDetailData() async {
    dio = Dio();

    dio!.options.headers["X-RapidAPI-Key"] = "a6e6239405mshaca792d99e91cbdp1b1016jsneacc34f17d54";


    try {
      Response response = await dio!.get(ApiConfig.getAirportsDetail);

      if (response.statusCode == 200) {
        return AirportsDetailModel.fromJson( response.data);
      }
    } catch (e) {
      print(e.toString());
    }
    
    
 }
}

