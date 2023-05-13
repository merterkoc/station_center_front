// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OperatorInfo _$$_OperatorInfoFromJson(Map<String, dynamic> json) =>
    _$_OperatorInfo(
      id: json['id'] as num?,
      title: json['title'] as String?,
      webSiteUrl: json['webSiteUrl'] as String?,
      contactPhone: json['contactPhone'] as String?,
      isPrivateIndividual: json['isPrivateIndividual'] as bool?,
      contactEmail: json['contactEmail'] as String?,
      appStoreUrl: json['appStoreUrl'] as String?,
      googlePlayUrl: json['googlePlayUrl'] as String?,
    );

Map<String, dynamic> _$$_OperatorInfoToJson(_$_OperatorInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'webSiteUrl': instance.webSiteUrl,
      'contactPhone': instance.contactPhone,
      'isPrivateIndividual': instance.isPrivateIndividual,
      'contactEmail': instance.contactEmail,
      'appStoreUrl': instance.appStoreUrl,
      'googlePlayUrl': instance.googlePlayUrl,
    };
