import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'pet_all_of.jser.dart';

class PetAllOf {
  
  @Alias('id', isNullable: false,  )
  final int id;
  

  PetAllOf(
      

{
    
     this.id = null 
    }
  );

  @override
  String toString() {
    return 'PetAllOf[id=$id, ]';
  }
}

@GenSerializer(nullableFields: true)
class PetAllOfSerializer extends Serializer<PetAllOf> with _$PetAllOfSerializer {

}

