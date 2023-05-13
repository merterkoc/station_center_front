import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_info.freezed.dart';

part 'address_info.g.dart';

@freezed
class AddressInfo with _$AddressInfo {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory AddressInfo({
    @JsonKey(name: 'title') required final int id,
    @JsonKey(name: 'addressInfoLine') required final String title,
    @JsonKey(name: 'province') required final String? province,
    @JsonKey(name: 'country') required final String? country,
    @JsonKey(name: 'latitude') required final num latitude,
    @JsonKey(name: 'longitude') required final num longitude,
    @JsonKey(name: 'contactPhone') required final String? contactPhone,
    @JsonKey(name: 'contactEmail') required final String? contactEmail,
  }) = _AddressInfo;

  factory AddressInfo.fromJson(Map<String, Object?> json) =>
      _$AddressInfoFromJson(json);
}
