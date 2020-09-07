library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:simple_petstore_dio_sdk/model/error.dart';
import 'package:simple_petstore_dio_sdk/model/pet.dart';


part 'serializers.g.dart';

@SerializersFor(const [
Error,
Pet,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Error)]),
() => new ListBuilder<Error>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Pet)]),
() => new ListBuilder<Pet>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();
