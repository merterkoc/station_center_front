// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Station _$$_StationFromJson(Map<String, dynamic> json) => _$_Station(
      id: json['id'] as int?,
      name: json['name'] as String?,
      connectorCount: json['connectorCount'] as num?,
      operatorInfo: json['operatorInfo'] == null
          ? null
          : OperatorInfo.fromJson(json['operatorInfo'] as Map<String, dynamic>),
      imageList: (json['imageList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isMemberShipRequired: json['isMemberShipRequired'] as bool?,
      usageCost: json['usageCost'] as String?,
      addressInfo: json['addressInfo'] == null
          ? null
          : AddressInfo.fromJson(json['addressInfo'] as Map<String, dynamic>),
      connector: (json['connector'] as List<dynamic>?)
          ?.map((e) => Connector.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StationToJson(_$_Station instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'connectorCount': instance.connectorCount,
      'operatorInfo': instance.operatorInfo?.toJson(),
      'imageList': instance.imageList,
      'isMemberShipRequired': instance.isMemberShipRequired,
      'usageCost': instance.usageCost,
      'addressInfo': instance.addressInfo?.toJson(),
      'connector': instance.connector?.map((e) => e.toJson()).toList(),
    };
