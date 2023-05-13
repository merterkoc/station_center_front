import 'package:station_center/dio/dio_client.dart';
import 'package:station_center/src/home/model/station/station.dart';

class StationApiProvider {
  final String _getStationPath = "/v1/station";
  final DioClient _dioClient = DioClient();

  Future<Station?> fetchStationById(int id) async {
    _dioClient.get("$_getStationPath/$id", loader: true).then((value) {
      return Station.fromJson(value.data);
    }).catchError((error) {
      throw error;
    });
    return null;
  }

  Future<List<Station>?> fetchStation() async {
    final response = await _dioClient.get(_getStationPath, loader: true);
    if (response.statusCode == 200) {
      var list =
          (response.data as List).map((e) => Station.fromJson(e)).toList();
      return list;
    } else {
      throw Exception('Failed to load station');
    }
  }
}
