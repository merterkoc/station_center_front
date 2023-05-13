part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class HomeInit extends HomeEvent {}

class MapCreated extends HomeEvent {
  const MapCreated({required this.controller});

  final GoogleMapController controller;

  @override
  List<Object?> get props => [controller];
}

class StationSelected extends HomeEvent {
  const StationSelected({required this.selectedStation});

  final Station selectedStation;

  @override
  List<Object?> get props => [selectedStation];
}
