// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$ErrorSerializer implements Serializer<Error> {
  @override
  Map<String, dynamic> toMap(Error model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'code', model.code);
    setMapValueIfNotNull(ret, 'message', model.message);
    return ret;
  }

  @override
  Error fromMap(Map map) {
    if (map == null) return null;
    final obj = Error(
        code: map['code'] as int ?? getJserDefault('code'),
        message: map['message'] as String ?? getJserDefault('message'));
    return obj;
  }
}
