
import 'package:dio/dio.dart';

import '../component/constant/api_config.dart';
import '../model/airports_model.dart';

class AirportsService {
  Dio? dio;

  Future<AirportsModel?> getAirportsData() async {
    dio = Dio();

    // dio!.options.headers['content-Type'] = 'application/json';
    dio!.options.headers["X-RapidAPI-Key"] =
    "11f5462e00msh3e1afab23dfd0d2p13fc3djsn816e363e099d";

    var parameterData = {"q": "ist"};

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