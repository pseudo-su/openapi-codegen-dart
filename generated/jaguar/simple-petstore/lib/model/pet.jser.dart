// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$PetSerializer implements Serializer<Pet> {
  @override
  Map<String, dynamic> toMap(Pet model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'id', model.id);
    setMapValueIfNotNull(ret, 'name', model.name);
    setMapValueIfNotNull(ret, 'tag', model.tag);
    return ret;
  }

  @override
  Pet fromMap(Map map) {
    if (map == null) return null;
    final obj = Pet(
        id: map['id'] as int ?? getJserDefault('id'),
        name: map['name'] as String ?? getJserDefault('name'),
        tag: map['tag'] as String ?? getJserDefault('tag'));
    return obj;
  }
}
