import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator_info.freezed.dart';

part 'operator_info.g.dart';

@freezed
class OperatorInfo with _$OperatorInfo {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory OperatorInfo({
    @JsonKey(name: 'id') final num? id,
    @JsonKey(name: 'title') final String? title,
    @JsonKey(name: 'webSiteUrl') final String? webSiteUrl,
    @JsonKey(name: 'contactPhone') final String? contactPhone,
    @JsonKey(name: 'isPrivateIndividual')
        required final bool? isPrivateIndividual,
    @JsonKey(name: 'contactEmail') final String? contactEmail,
    @JsonKey(name: 'appStoreUrl') final String? appStoreUrl,
    @JsonKey(name: 'googlePlayUrl') final String? googlePlayUrl,
  }) = _OperatorInfo;

  factory OperatorInfo.fromJson(Map<String, Object?> json) =>
      _$OperatorInfoFromJson(json);
}
