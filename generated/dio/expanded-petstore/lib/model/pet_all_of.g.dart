// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PetAllOf> _$petAllOfSerializer = new _$PetAllOfSerializer();

class _$PetAllOfSerializer implements StructuredSerializer<PetAllOf> {
  @override
  final Iterable<Type> types = const [PetAllOf, _$PetAllOf];
  @override
  final String wireName = 'PetAllOf';

  @override
  Iterable<Object> serialize(Serializers serializers, PetAllOf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PetAllOf deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PetAllOfBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PetAllOf extends PetAllOf {
  @override
  final int id;

  factory _$PetAllOf([void Function(PetAllOfBuilder) updates]) =>
      (new PetAllOfBuilder()..update(updates)).build();

  _$PetAllOf._({this.id}) : super._();

  @override
  PetAllOf rebuild(void Function(PetAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetAllOfBuilder toBuilder() => new PetAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PetAllOf && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PetAllOf')..add('id', id)).toString();
  }
}

class PetAllOfBuilder implements Builder<PetAllOf, PetAllOfBuilder> {
  _$PetAllOf _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  PetAllOfBuilder();

  PetAllOfBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PetAllOf other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PetAllOf;
  }

  @override
  void update(void Function(PetAllOfBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PetAllOf build() {
    final _$result = _$v ?? new _$PetAllOf._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
