import 'package:freezed_annotation/freezed_annotation.dart';
import '../address_info/address_info.dart';
import '../connector/connector.dart';
import '../operator_info/operator_info.dart';

part 'station.freezed.dart';

part 'station.g.dart';

@freezed
class Station with _$Station {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory Station({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'connectorCount') final num? connectorCount,
    @JsonKey(name: 'operatorInfo') final OperatorInfo? operatorInfo,
    @JsonKey(name: 'imageList') final List<String>? imageList,
    @JsonKey(name: 'isMemberShipRequired') final bool? isMemberShipRequired,
    @JsonKey(name: 'usageCost') final String? usageCost,
    @JsonKey(name: 'addressInfo') final AddressInfo? addressInfo,
    @JsonKey(name: 'connector') final List<Connector>? connector,
  }) = _Station;

  factory Station.fromJson(Map<String, Object?> json) =>
      _$StationFromJson(json);
}
