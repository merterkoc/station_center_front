part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.stationList,
    this.selectedStation,
    this.iconList,
    this.mapController,
  });

  final List<Station>? stationList;
  final Station? selectedStation;
  final List<BitmapDescriptor>? iconList;
  final GoogleMapController? mapController;

  HomeState copyWith({
    List<Station>? stationList,
    Station? selectedStation,
    List<BitmapDescriptor>? iconList,
    GoogleMapController? mapController,
  }) {
    return HomeState(
      stationList: stationList ?? this.stationList,
      selectedStation: selectedStation ?? this.selectedStation,
      iconList: iconList ?? this.iconList,
      mapController: mapController ?? this.mapController,
    );
  }

  @override
  List<Object?> get props => [
        stationList,
        selectedStation,
        iconList,
        mapController,
      ];
}
