import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:station_center/src/home/bloc/home_bloc.dart';
import 'package:station_center/src/home/mixins/marker_mixin.dart';
import 'package:station_center/src/home/widget/station_panel.dart';
import 'package:station_center/src/library/station_center_library.dart';

class MapWidget extends StatelessWidget with MarkerMixin {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Fetch data from service and set to bloc
    init(context);
    return BlocConsumer<HomeBloc, HomeState>(
      listenWhen: (previous, current) {
        return listenWhen(previous, current);
      },
      listener: (context, state) {
        showStationCenterBottomSheet(
          context,
          child: StationPanelWidget(
            selectedStation: state.selectedStation!,
          ),
        );
      },
      buildWhen: (previous, current) {
        return buildWhen(previous, current);
      },
      builder: (context, state) {
        return GoogleMap(
          myLocationEnabled: true,
          initialCameraPosition: const CameraPosition(
            target: LatLng(39.88213322078709, 32.75457846839239),
            zoom: 8.0,
          ),
          mapType: MapType.normal,
          onMapCreated: (controller) {
            context.read<HomeBloc>().add(MapCreated(controller: controller));
          },
          markers: createMarkers(state, context),
          //markers: markers
        );
      },
    );
  }

  bool listenWhen(HomeState previous, HomeState current) {
    return previous.selectedStation != current.selectedStation;
  }

  Set<Marker> createMarkers(HomeState state, BuildContext context) {
    if (state.iconList != null) {
      return state.stationList?.map((station) {
            return Marker(
              markerId: MarkerId(station.id.toString()),
              position: LatLng(station.addressInfo!.latitude.toDouble(),
                  station.addressInfo!.longitude.toDouble()),
              icon: getIcon(station.operatorInfo?.title, state.iconList!),
              onTap: () {
                context
                    .read<HomeBloc>()
                    .add(StationSelected(selectedStation: station));
              },
            );
          }).toSet() ??
          {};
    }
    return {};
  }

  void init(BuildContext context) {
    context.read<HomeBloc>().add(HomeInit());
  }

  /// Must refresh if the station list has changed and the icons are not null
  static bool buildWhen(HomeState previous, HomeState current) =>
      previous.stationList != current.stationList &&
      current.stationList != null &&
      current.iconList != null;
}
