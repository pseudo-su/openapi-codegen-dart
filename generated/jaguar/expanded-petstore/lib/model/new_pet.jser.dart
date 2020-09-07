// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_pet.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$NewPetSerializer implements Serializer<NewPet> {
  @override
  Map<String, dynamic> toMap(NewPet model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValueIfNotNull(ret, 'name', model.name);
    setMapValueIfNotNull(ret, 'tag', model.tag);
    return ret;
  }

  @override
  NewPet fromMap(Map map) {
    if (map == null) return null;
    final obj = NewPet(
        name: map['name'] as String ?? getJserDefault('name'),
        tag: map['tag'] as String ?? getJserDefault('tag'));
    return obj;
  }
}
