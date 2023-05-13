import 'package:flutter_svg/flutter_svg.dart';
import 'package:station_center/common/ui/component/network_image.dart';
import 'package:station_center/const/padding.dart';
import 'package:station_center/const/style.dart';
import 'package:station_center/src/home/model/address_info/address_info.dart';
import 'package:station_center/src/home/model/connector/connector.dart';
import 'package:station_center/src/home/model/station/station.dart';
import 'package:station_center/src/library/station_center_library.dart';

class StationPanelWidget extends StatelessWidget {
  const StationPanelWidget({super.key, required this.selectedStation});

  final Station selectedStation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        TopBar(
            stationName: selectedStation.name!,
            connectorCount: selectedStation.connectorCount ?? 0,
            addressInfo: selectedStation.addressInfo),
        Images(imageList: selectedStation.imageList),
        Connectors(connectors: selectedStation.connector),
        Address(addressInfo: selectedStation.addressInfo),
      ],
    );
  }
}

class Address extends StatelessWidget {
  const Address({super.key, this.addressInfo});

  final AddressInfo? addressInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.verticalMedium,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Address", style: Styles.titleLight),
          const SizedBox(height: 10),
          Text(addressInfo?.title ?? ''),
          Text(addressInfo?.province ?? ''),
          Text(addressInfo?.country ?? ''),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar(
      {super.key,
      required this.connectorCount,
      required this.stationName,
      this.addressInfo});

  final String stationName;
  final num connectorCount;
  final AddressInfo? addressInfo;
  final String appStoreUrl =
      'https://apps.apple.com/us/app/station-center/id1545990000';
  final String playStoreUrl =
      'https://play.google.com/store/apps/details?id=com.stationcenter';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            stationName,
            style: Styles.titleMedium,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    launchMapsUrl(addressInfo?.latitude ?? 0,
                        addressInfo?.longitude ?? 0);
                  },
                  child: const Text("Get Directions")),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Icon(Icons.play_arrow_sharp,
                        color: Colors.black, size: 20),
                  ),
                  TextButton(
                    onPressed: () {},
                    child:
                        const Icon(Icons.apple, color: Colors.black, size: 20),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Connectors extends StatelessWidget {
  const Connectors({super.key, this.connectors});

  final List<Connector>? connectors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.verticalMedium,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Connectors",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
          ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: connectors!.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: AppPadding.verticalXSmall,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: Container(
                    color: Colors.black12,
                    child: Padding(
                      padding: AppPadding.allSmall,
                      child: Center(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'asset/svg/connector/ev-plug-type-two.svg',
                              height: 30,
                              width: 30,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 10),
                            Flexible(
                              child: RichText(
                                maxLines: 2,
                                text: TextSpan(
                                  text: connectors![index].currentType,
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' ${connectors![index].type} V',
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ${connectors![index].powerKW} kW',
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Images extends StatelessWidget {
  const Images({super.key, required this.imageList});

  final List<String>? imageList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: AppPadding.allSmall,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: CustomNetworkImage(imageUrl: imageList![index]),
            ),
          );
        },
      ),
    );
  }
}
