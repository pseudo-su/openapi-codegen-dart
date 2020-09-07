import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'new_pet.jser.dart';

class NewPet {
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('tag', isNullable: false,  )
  final String tag;
  

  NewPet(
      

{
    
     this.name = null,   this.tag = null 
    
    }
  );

  @override
  String toString() {
    return 'NewPet[name=$name, tag=$tag, ]';
  }
}

@GenSerializer(nullableFields: true)
class NewPetSerializer extends Serializer<NewPet> with _$NewPetSerializer {

}

