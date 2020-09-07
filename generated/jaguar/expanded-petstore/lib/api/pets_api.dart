import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:expanded_petstore_jaguar_sdk/model/new_pet.dart';
import 'package:expanded_petstore_jaguar_sdk/model/error.dart';
import 'package:expanded_petstore_jaguar_sdk/model/pet.dart';

part 'pets_api.jretro.dart';

@GenApiClient()
class PetsApi extends ApiClient with _$PetsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    PetsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// 
    ///
    /// Creates a new pet in the store. Duplicates are allowed
    @PostReq(path: "/pets")
    Future<Pet> addPet(
            
             @AsJson() NewPet newPet
        ) {
        return super.addPet(

        
        newPet
        ).timeout(timeout);
    }

    /// 
    ///
    /// deletes a single pet based on the ID supplied
    @DeleteReq(path: "/pets/:id")
    Future<void> deletePet(
            @PathParam("id") int id
        ) {
        return super.deletePet(
        id

        ).timeout(timeout);
    }

    /// 
    ///
    /// Returns a user based on a single ID, if the user does not have access to the pet
    @GetReq(path: "/pets/:id")
    Future<Pet> findPetById(
            @PathParam("id") int id
        ) {
        return super.findPetById(
        id

        ).timeout(timeout);
    }

    /// 
    ///
    /// Returns all pets from the system that the user has access to Nam sed condimentum est. Maecenas tempor sagittis sapien, nec rhoncus sem sagittis sit amet. Aenean at gravida augue, ac iaculis sem. Curabitur odio lorem, ornare eget elementum nec, cursus id lectus. Duis mi turpis, pulvinar ac eros ac, tincidunt varius justo. In hac habitasse platea dictumst. Integer at adipiscing ante, a sagittis ligula. Aenean pharetra tempor ante molestie imperdiet. Vivamus id aliquam diam. Cras quis velit non tortor eleifend sagittis. Praesent at enim pharetra urna volutpat venenatis eget eget mauris. In eleifend fermentum facilisis. Praesent enim enim, gravida ac sodales sed, placerat id erat. Suspendisse lacus dolor, consectetur non augue vel, vehicula interdum libero. Morbi euismod sagittis libero sed lacinia.  Sed tempus felis lobortis leo pulvinar rutrum. Nam mattis velit nisl, eu condimentum ligula luctus nec. Phasellus semper velit eget aliquet faucibus. In a mattis elit. Phasellus vel urna viverra, condimentum lorem id, rhoncus nibh. Ut pellentesque posuere elementum. Sed a varius odio. Morbi rhoncus ligula libero, vel eleifend nunc tristique vitae. Fusce et sem dui. Aenean nec scelerisque tortor. Fusce malesuada accumsan magna vel tempus. Quisque mollis felis eu dolor tristique, sit amet auctor felis gravida. Sed libero lorem, molestie sed nisl in, accumsan tempor nisi. Fusce sollicitudin massa ut lacinia mattis. Sed vel eleifend lorem. Pellentesque vitae felis pretium, pulvinar elit eu, euismod sapien. 
    @GetReq(path: "/pets")
    Future<List<Pet>> findPets(
        
            @QueryParam("tags") List<String> tags, 
        
            @QueryParam("limit") int limit
        ) {
        return super.findPets(
        
        tags, 
        
        limit

        ).timeout(timeout);
    }


}
