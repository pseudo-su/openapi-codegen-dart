        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pet_all_of.g.dart';

abstract class PetAllOf implements Built<PetAllOf, PetAllOfBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    PetAllOf._();

    factory PetAllOf([updates(PetAllOfBuilder b)]) = _$PetAllOf;
    static Serializer<PetAllOf> get serializer => _$petAllOfSerializer;
}

