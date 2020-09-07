            import 'package:expanded_petstore_dio_sdk/model/pet_all_of.dart';
            import 'package:expanded_petstore_dio_sdk/model/new_pet.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pet.g.dart';

abstract class Pet implements Built<Pet, PetBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'tag')
    String get tag;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    Pet._();

    factory Pet([updates(PetBuilder b)]) = _$Pet;
    static Serializer<Pet> get serializer => _$petSerializer;
}

