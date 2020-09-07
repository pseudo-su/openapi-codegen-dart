import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:simple_petstore_jaguar_sdk/model/error.dart';
import 'package:simple_petstore_jaguar_sdk/model/pet.dart';

part 'pets_api.jretro.dart';

@GenApiClient()
class PetsApi extends ApiClient with _$PetsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    PetsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Create a pet
    ///
    /// 
    @PostReq(path: "/pets")
    Future<void> createPets(
        ) {
        return super.createPets(

        ).timeout(timeout);
    }

    /// List all pets
    ///
    /// 
    @GetReq(path: "/pets")
    Future<List<Pet>> listPets(
        
            @QueryParam("limit") int limit
        ) {
        return super.listPets(
        
        limit

        ).timeout(timeout);
    }

    /// Info for a specific pet
    ///
    /// 
    @GetReq(path: "/pets/:petId")
    Future<Pet> showPetById(
            @PathParam("petId") String petId
        ) {
        return super.showPetById(
        petId

        ).timeout(timeout);
    }


}
