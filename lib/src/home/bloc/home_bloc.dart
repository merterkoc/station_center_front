import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:station_center/const/asset.dart';
import 'package:station_center/repository/station_repository.dart';
import 'package:station_center/src/home/constant/map_constant.dart';
import 'package:station_center/src/home/model/station/station.dart';
import 'package:station_center/src/utils.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final StationRepository _stationRepository = StationRepository();

  HomeBloc() : super(const HomeState()) {
    on<HomeInit>(_onHomeInit);
    on<StationSelected>(_onStationSelected);
    on<MapCreated>(_onMapCreated);
  }

  Future<FutureOr<void>> _onHomeInit(
      HomeInit event, Emitter<HomeState> emit) async {
    /// Create markers with stations on first trigger
    if (state.iconList == null) {
      await loadMarker(width: MapConstant.markerWidth)
          .then((value) => emit(state.copyWith(iconList: value)));
    }

    /// Fetch stations from service
    await getStation()
        .then((value) {
          emit(state.copyWith(stationList: value));
        });
  }

  FutureOr<void> _onStationSelected(
      StationSelected event, Emitter<HomeState> emit) {
    emit(state.copyWith(selectedStation: event.selectedStation));
  }

  FutureOr<void> _onMapCreated(MapCreated event, Emitter<HomeState> emit) {
    emit(state.copyWith(mapController: event.controller));
  }

  Future<List<BitmapDescriptor>> loadMarker({required int width}) async {
    late List<BitmapDescriptor> iconList = List.empty(growable: true);
    await getBytesFromAsset(defaultMarker, width).then((value) {
      iconList.add(BitmapDescriptor.fromBytes(value));
    });
    await getBytesFromAsset(eChargeMarker, width).then((value) {
      iconList.add(BitmapDescriptor.fromBytes(value));
    });
    await getBytesFromAsset(onchargeMarker, width).then((value) {
      iconList.add(BitmapDescriptor.fromBytes(value));
    });
    await getBytesFromAsset(sharzMarker, width).then((value) {
      iconList.add(BitmapDescriptor.fromBytes(value));
    });
    await getBytesFromAsset(voltrunMarker, width).then((value) {
      iconList.add(BitmapDescriptor.fromBytes(value));
    });
    await getBytesFromAsset(zesMarker, width).then((value) {
      iconList.add(BitmapDescriptor.fromBytes(value));
    });
    return iconList;
  }

  Future<List<Station>?> getStation() async {
    List<Station>? stations = List.empty(growable: true);
    final response = await _stationRepository.fetchStation();
    if (response != null) {
      stations = response;
    }
    return stations;
  }
}
