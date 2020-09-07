// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Pet> _$petSerializer = new _$PetSerializer();

class _$PetSerializer implements StructuredSerializer<Pet> {
  @override
  final Iterable<Type> types = const [Pet, _$Pet];
  @override
  final String wireName = 'Pet';

  @override
  Iterable<Object> serialize(Serializers serializers, Pet object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.tag != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(object.tag,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Pet deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Pet extends Pet {
  @override
  final String name;
  @override
  final String tag;
  @override
  final int id;

  factory _$Pet([void Function(PetBuilder) updates]) =>
      (new PetBuilder()..update(updates)).build();

  _$Pet._({this.name, this.tag, this.id}) : super._();

  @override
  Pet rebuild(void Function(PetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetBuilder toBuilder() => new PetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pet &&
        name == other.name &&
        tag == other.tag &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), tag.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pet')
          ..add('name', name)
          ..add('tag', tag)
          ..add('id', id))
        .toString();
  }
}

class PetBuilder implements Builder<Pet, PetBuilder> {
  _$Pet _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  PetBuilder();

  PetBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _tag = _$v.tag;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pet other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Pet;
  }

  @override
  void update(void Function(PetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pet build() {
    final _$result = _$v ?? new _$Pet._(name: name, tag: tag, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
