// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Connector _$ConnectorFromJson(Map<String, dynamic> json) {
  return _Connector.fromJson(json);
}

/// @nodoc
mixin _$Connector {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentType')
  String get currentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'powerKW')
  num get powerKW => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectorCopyWith<Connector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectorCopyWith<$Res> {
  factory $ConnectorCopyWith(Connector value, $Res Function(Connector) then) =
      _$ConnectorCopyWithImpl<$Res, Connector>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'currentType') String currentType,
      @JsonKey(name: 'powerKW') num powerKW});
}

/// @nodoc
class _$ConnectorCopyWithImpl<$Res, $Val extends Connector>
    implements $ConnectorCopyWith<$Res> {
  _$ConnectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? currentType = null,
    Object? powerKW = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      currentType: null == currentType
          ? _value.currentType
          : currentType // ignore: cast_nullable_to_non_nullable
              as String,
      powerKW: null == powerKW
          ? _value.powerKW
          : powerKW // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectorCopyWith<$Res> implements $ConnectorCopyWith<$Res> {
  factory _$$_ConnectorCopyWith(
          _$_Connector value, $Res Function(_$_Connector) then) =
      __$$_ConnectorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'currentType') String currentType,
      @JsonKey(name: 'powerKW') num powerKW});
}

/// @nodoc
class __$$_ConnectorCopyWithImpl<$Res>
    extends _$ConnectorCopyWithImpl<$Res, _$_Connector>
    implements _$$_ConnectorCopyWith<$Res> {
  __$$_ConnectorCopyWithImpl(
      _$_Connector _value, $Res Function(_$_Connector) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? currentType = null,
    Object? powerKW = null,
  }) {
    return _then(_$_Connector(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      currentType: null == currentType
          ? _value.currentType
          : currentType // ignore: cast_nullable_to_non_nullable
              as String,
      powerKW: null == powerKW
          ? _value.powerKW
          : powerKW // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_Connector implements _Connector {
  _$_Connector(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'currentType') required this.currentType,
      @JsonKey(name: 'powerKW') required this.powerKW});

  factory _$_Connector.fromJson(Map<String, dynamic> json) =>
      _$$_ConnectorFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'currentType')
  final String currentType;
  @override
  @JsonKey(name: 'powerKW')
  final num powerKW;

  @override
  String toString() {
    return 'Connector(type: $type, currentType: $currentType, powerKW: $powerKW)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connector &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currentType, currentType) ||
                other.currentType == currentType) &&
            (identical(other.powerKW, powerKW) || other.powerKW == powerKW));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, currentType, powerKW);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectorCopyWith<_$_Connector> get copyWith =>
      __$$_ConnectorCopyWithImpl<_$_Connector>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConnectorToJson(
      this,
    );
  }
}

abstract class _Connector implements Connector {
  factory _Connector(
      {@JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'currentType') required final String currentType,
      @JsonKey(name: 'powerKW') required final num powerKW}) = _$_Connector;

  factory _Connector.fromJson(Map<String, dynamic> json) =
      _$_Connector.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'currentType')
  String get currentType;
  @override
  @JsonKey(name: 'powerKW')
  num get powerKW;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectorCopyWith<_$_Connector> get copyWith =>
      throw _privateConstructorUsedError;
}
