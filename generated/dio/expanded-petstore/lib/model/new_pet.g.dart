// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_pet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewPet> _$newPetSerializer = new _$NewPetSerializer();

class _$NewPetSerializer implements StructuredSerializer<NewPet> {
  @override
  final Iterable<Type> types = const [NewPet, _$NewPet];
  @override
  final String wireName = 'NewPet';

  @override
  Iterable<Object> serialize(Serializers serializers, NewPet object,
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
    return result;
  }

  @override
  NewPet deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewPetBuilder();

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
      }
    }

    return result.build();
  }
}

class _$NewPet extends NewPet {
  @override
  final String name;
  @override
  final String tag;

  factory _$NewPet([void Function(NewPetBuilder) updates]) =>
      (new NewPetBuilder()..update(updates)).build();

  _$NewPet._({this.name, this.tag}) : super._();

  @override
  NewPet rebuild(void Function(NewPetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewPetBuilder toBuilder() => new NewPetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewPet && name == other.name && tag == other.tag;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), tag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewPet')
          ..add('name', name)
          ..add('tag', tag))
        .toString();
  }
}

class NewPetBuilder implements Builder<NewPet, NewPetBuilder> {
  _$NewPet _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  NewPetBuilder();

  NewPetBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _tag = _$v.tag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewPet other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewPet;
  }

  @override
  void update(void Function(NewPetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewPet build() {
    final _$result = _$v ?? new _$NewPet._(name: name, tag: tag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
