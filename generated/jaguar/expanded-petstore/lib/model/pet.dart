import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:expanded_petstore_jaguar_sdk/model/new_pet.dart';

import 'package:expanded_petstore_jaguar_sdk/model/pet_all_of.dart';

part 'pet.jser.dart';

class Pet {
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('tag', isNullable: false,  )
  final String tag;
  
  @Alias('id', isNullable: false,  )
  final int id;
  

  Pet(
      

{
    
     this.name = null,   this.tag = null,  
    
     this.id = null 
    }
  );

  @override
  String toString() {
    return 'Pet[name=$name, tag=$tag, id=$id, ]';
  }
}

@GenSerializer(nullableFields: true)
class PetSerializer extends Serializer<Pet> with _$PetSerializer {

}

