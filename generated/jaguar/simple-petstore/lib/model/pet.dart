import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'pet.jser.dart';

class Pet {
  
  @Alias('id', isNullable: false,  )
  final int id;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('tag', isNullable: false,  )
  final String tag;
  

  Pet(
      

{
    
     this.id = null,  
     this.name = null,   this.tag = null 
    
    }
  );

  @override
  String toString() {
    return 'Pet[id=$id, name=$name, tag=$tag, ]';
  }
}

@GenSerializer(nullableFields: true)
class PetSerializer extends Serializer<Pet> with _$PetSerializer {

}

