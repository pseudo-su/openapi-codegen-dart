// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_api.dart';

// **************************************************************************
// JaguarHttpGenerator
// **************************************************************************

abstract class _$PetsApiClient implements ApiClient {
  final String basePath = "";
  Future<Pet> addPet(NewPet newPet) async {
    var req =
        base.post.path(basePath).path("/pets").json(jsonConverter.to(newPet));
    return req.go(throwOnErr: true).map(decodeOne);
  }

  Future<void> deletePet(int id) async {
    var req = base.delete.path(basePath).path("/pets/:id").pathParams("id", id);
    await req.go(throwOnErr: true);
  }

  Future<Pet> findPetById(int id) async {
    var req = base.get.path(basePath).path("/pets/:id").pathParams("id", id);
    return req.go(throwOnErr: true).map(decodeOne);
  }

  Future<List<Pet>> findPets(List<String> tags, int limit) async {
    var req = base.get
        .path(basePath)
        .path("/pets")
        .query("tags", tags)
        .query("limit", limit);
    return req.go(throwOnErr: true).map(decodeList);
  }
}
