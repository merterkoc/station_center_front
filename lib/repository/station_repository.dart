import 'package:station_center/api_provider/station_api_provider.dart';
import 'package:station_center/src/home/model/station/station.dart';

class StationRepository {
  final StationApiProvider _stationApiProvider = StationApiProvider();

  Future<List<Station>?> fetchStation() async {
    return await _stationApiProvider.fetchStation();
  }

  Future<Station?> fetchStationById(int id) =>
      _stationApiProvider.fetchStationById(id);
}
