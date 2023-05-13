// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'connectorCount')
  num? get connectorCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'operatorInfo')
  OperatorInfo? get operatorInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageList')
  List<String>? get imageList => throw _privateConstructorUsedError;
  @JsonKey(name: 'isMemberShipRequired')
  bool? get isMemberShipRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'usageCost')
  String? get usageCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressInfo')
  AddressInfo? get addressInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'connector')
  List<Connector>? get connector => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res, Station>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'connectorCount') num? connectorCount,
      @JsonKey(name: 'operatorInfo') OperatorInfo? operatorInfo,
      @JsonKey(name: 'imageList') List<String>? imageList,
      @JsonKey(name: 'isMemberShipRequired') bool? isMemberShipRequired,
      @JsonKey(name: 'usageCost') String? usageCost,
      @JsonKey(name: 'addressInfo') AddressInfo? addressInfo,
      @JsonKey(name: 'connector') List<Connector>? connector});

  $OperatorInfoCopyWith<$Res>? get operatorInfo;
  $AddressInfoCopyWith<$Res>? get addressInfo;
}

/// @nodoc
class _$StationCopyWithImpl<$Res, $Val extends Station>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? connectorCount = freezed,
    Object? operatorInfo = freezed,
    Object? imageList = freezed,
    Object? isMemberShipRequired = freezed,
    Object? usageCost = freezed,
    Object? addressInfo = freezed,
    Object? connector = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      connectorCount: freezed == connectorCount
          ? _value.connectorCount
          : connectorCount // ignore: cast_nullable_to_non_nullable
              as num?,
      operatorInfo: freezed == operatorInfo
          ? _value.operatorInfo
          : operatorInfo // ignore: cast_nullable_to_non_nullable
              as OperatorInfo?,
      imageList: freezed == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isMemberShipRequired: freezed == isMemberShipRequired
          ? _value.isMemberShipRequired
          : isMemberShipRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      usageCost: freezed == usageCost
          ? _value.usageCost
          : usageCost // ignore: cast_nullable_to_non_nullable
              as String?,
      addressInfo: freezed == addressInfo
          ? _value.addressInfo
          : addressInfo // ignore: cast_nullable_to_non_nullable
              as AddressInfo?,
      connector: freezed == connector
          ? _value.connector
          : connector // ignore: cast_nullable_to_non_nullable
              as List<Connector>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OperatorInfoCopyWith<$Res>? get operatorInfo {
    if (_value.operatorInfo == null) {
      return null;
    }

    return $OperatorInfoCopyWith<$Res>(_value.operatorInfo!, (value) {
      return _then(_value.copyWith(operatorInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressInfoCopyWith<$Res>? get addressInfo {
    if (_value.addressInfo == null) {
      return null;
    }

    return $AddressInfoCopyWith<$Res>(_value.addressInfo!, (value) {
      return _then(_value.copyWith(addressInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StationCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$_StationCopyWith(
          _$_Station value, $Res Function(_$_Station) then) =
      __$$_StationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'connectorCount') num? connectorCount,
      @JsonKey(name: 'operatorInfo') OperatorInfo? operatorInfo,
      @JsonKey(name: 'imageList') List<String>? imageList,
      @JsonKey(name: 'isMemberShipRequired') bool? isMemberShipRequired,
      @JsonKey(name: 'usageCost') String? usageCost,
      @JsonKey(name: 'addressInfo') AddressInfo? addressInfo,
      @JsonKey(name: 'connector') List<Connector>? connector});

  @override
  $OperatorInfoCopyWith<$Res>? get operatorInfo;
  @override
  $AddressInfoCopyWith<$Res>? get addressInfo;
}

/// @nodoc
class __$$_StationCopyWithImpl<$Res>
    extends _$StationCopyWithImpl<$Res, _$_Station>
    implements _$$_StationCopyWith<$Res> {
  __$$_StationCopyWithImpl(_$_Station _value, $Res Function(_$_Station) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? connectorCount = freezed,
    Object? operatorInfo = freezed,
    Object? imageList = freezed,
    Object? isMemberShipRequired = freezed,
    Object? usageCost = freezed,
    Object? addressInfo = freezed,
    Object? connector = freezed,
  }) {
    return _then(_$_Station(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      connectorCount: freezed == connectorCount
          ? _value.connectorCount
          : connectorCount // ignore: cast_nullable_to_non_nullable
              as num?,
      operatorInfo: freezed == operatorInfo
          ? _value.operatorInfo
          : operatorInfo // ignore: cast_nullable_to_non_nullable
              as OperatorInfo?,
      imageList: freezed == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isMemberShipRequired: freezed == isMemberShipRequired
          ? _value.isMemberShipRequired
          : isMemberShipRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      usageCost: freezed == usageCost
          ? _value.usageCost
          : usageCost // ignore: cast_nullable_to_non_nullable
              as String?,
      addressInfo: freezed == addressInfo
          ? _value.addressInfo
          : addressInfo // ignore: cast_nullable_to_non_nullable
              as AddressInfo?,
      connector: freezed == connector
          ? _value._connector
          : connector // ignore: cast_nullable_to_non_nullable
              as List<Connector>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_Station implements _Station {
  _$_Station(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'connectorCount') this.connectorCount,
      @JsonKey(name: 'operatorInfo') this.operatorInfo,
      @JsonKey(name: 'imageList') final List<String>? imageList,
      @JsonKey(name: 'isMemberShipRequired') this.isMemberShipRequired,
      @JsonKey(name: 'usageCost') this.usageCost,
      @JsonKey(name: 'addressInfo') this.addressInfo,
      @JsonKey(name: 'connector') final List<Connector>? connector})
      : _imageList = imageList,
        _connector = connector;

  factory _$_Station.fromJson(Map<String, dynamic> json) =>
      _$$_StationFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'connectorCount')
  final num? connectorCount;
  @override
  @JsonKey(name: 'operatorInfo')
  final OperatorInfo? operatorInfo;
  final List<String>? _imageList;
  @override
  @JsonKey(name: 'imageList')
  List<String>? get imageList {
    final value = _imageList;
    if (value == null) return null;
    if (_imageList is EqualUnmodifiableListView) return _imageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'isMemberShipRequired')
  final bool? isMemberShipRequired;
  @override
  @JsonKey(name: 'usageCost')
  final String? usageCost;
  @override
  @JsonKey(name: 'addressInfo')
  final AddressInfo? addressInfo;
  final List<Connector>? _connector;
  @override
  @JsonKey(name: 'connector')
  List<Connector>? get connector {
    final value = _connector;
    if (value == null) return null;
    if (_connector is EqualUnmodifiableListView) return _connector;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Station(id: $id, name: $name, connectorCount: $connectorCount, operatorInfo: $operatorInfo, imageList: $imageList, isMemberShipRequired: $isMemberShipRequired, usageCost: $usageCost, addressInfo: $addressInfo, connector: $connector)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Station &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.connectorCount, connectorCount) ||
                other.connectorCount == connectorCount) &&
            (identical(other.operatorInfo, operatorInfo) ||
                other.operatorInfo == operatorInfo) &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList) &&
            (identical(other.isMemberShipRequired, isMemberShipRequired) ||
                other.isMemberShipRequired == isMemberShipRequired) &&
            (identical(other.usageCost, usageCost) ||
                other.usageCost == usageCost) &&
            (identical(other.addressInfo, addressInfo) ||
                other.addressInfo == addressInfo) &&
            const DeepCollectionEquality()
                .equals(other._connector, _connector));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      connectorCount,
      operatorInfo,
      const DeepCollectionEquality().hash(_imageList),
      isMemberShipRequired,
      usageCost,
      addressInfo,
      const DeepCollectionEquality().hash(_connector));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StationCopyWith<_$_Station> get copyWith =>
      __$$_StationCopyWithImpl<_$_Station>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StationToJson(
      this,
    );
  }
}

abstract class _Station implements Station {
  factory _Station(
      {@JsonKey(name: 'id')
          final int? id,
      @JsonKey(name: 'name')
          final String? name,
      @JsonKey(name: 'connectorCount')
          final num? connectorCount,
      @JsonKey(name: 'operatorInfo')
          final OperatorInfo? operatorInfo,
      @JsonKey(name: 'imageList')
          final List<String>? imageList,
      @JsonKey(name: 'isMemberShipRequired')
          final bool? isMemberShipRequired,
      @JsonKey(name: 'usageCost')
          final String? usageCost,
      @JsonKey(name: 'addressInfo')
          final AddressInfo? addressInfo,
      @JsonKey(name: 'connector')
          final List<Connector>? connector}) = _$_Station;

  factory _Station.fromJson(Map<String, dynamic> json) = _$_Station.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'connectorCount')
  num? get connectorCount;
  @override
  @JsonKey(name: 'operatorInfo')
  OperatorInfo? get operatorInfo;
  @override
  @JsonKey(name: 'imageList')
  List<String>? get imageList;
  @override
  @JsonKey(name: 'isMemberShipRequired')
  bool? get isMemberShipRequired;
  @override
  @JsonKey(name: 'usageCost')
  String? get usageCost;
  @override
  @JsonKey(name: 'addressInfo')
  AddressInfo? get addressInfo;
  @override
  @JsonKey(name: 'connector')
  List<Connector>? get connector;
  @override
  @JsonKey(ignore: true)
  _$$_StationCopyWith<_$_Station> get copyWith =>
      throw _privateConstructorUsedError;
}
