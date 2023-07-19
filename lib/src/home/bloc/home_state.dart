part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.stationList,
    this.selectedStation,
    this.iconList,
  });

  final List<Station>? stationList;
  final Station? selectedStation;
  final List<BitmapDescriptor>? iconList;

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
    );
  }

  @override
  List<Object?> get props => [
        stationList,
        selectedStation,
        iconList,
      ];
}
