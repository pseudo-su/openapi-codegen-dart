// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_all_of.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$PetAllOfSerializer implements Serializer<PetAllOf> {
  @override
  Map<String, dynamic> toMap(PetAllOf model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    return ret;
  }

  @override
  PetAllOf fromMap(Map map) {
    if (map == null) return null;
    final obj = PetAllOf(id: map['id'] as int ?? getJserDefault('id'));
    return obj;
  }
}
