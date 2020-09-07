        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'new_pet.g.dart';

abstract class NewPet implements Built<NewPet, NewPetBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'tag')
    String get tag;

    // Boilerplate code needed to wire-up generated code
    NewPet._();

    factory NewPet([updates(NewPetBuilder b)]) = _$NewPet;
    static Serializer<NewPet> get serializer => _$newPetSerializer;
}

