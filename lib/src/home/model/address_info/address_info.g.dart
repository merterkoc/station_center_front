// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressInfo _$$_AddressInfoFromJson(Map<String, dynamic> json) =>
    _$_AddressInfo(
      id: json['title'] as int,
      title: json['addressInfoLine'] as String,
      province: json['province'] as String?,
      country: json['country'] as String?,
      latitude: json['latitude'] as num,
      longitude: json['longitude'] as num,
      contactPhone: json['contactPhone'] as String?,
      contactEmail: json['contactEmail'] as String?,
    );

Map<String, dynamic> _$$_AddressInfoToJson(_$_AddressInfo instance) =>
    <String, dynamic>{
      'title': instance.id,
      'addressInfoLine': instance.title,
      'province': instance.province,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'contactPhone': instance.contactPhone,
      'contactEmail': instance.contactEmail,
    };
