library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:expanded_petstore_dio_sdk/model/error.dart';
import 'package:expanded_petstore_dio_sdk/model/new_pet.dart';
import 'package:expanded_petstore_dio_sdk/model/pet.dart';
import 'package:expanded_petstore_dio_sdk/model/pet_all_of.dart';


part 'serializers.g.dart';

@SerializersFor(const [
Error,
NewPet,
Pet,
PetAllOf,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Error)]),
() => new ListBuilder<Error>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(NewPet)]),
() => new ListBuilder<NewPet>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Pet)]),
() => new ListBuilder<Pet>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PetAllOf)]),
() => new ListBuilder<PetAllOf>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();
