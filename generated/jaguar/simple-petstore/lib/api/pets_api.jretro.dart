// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_api.dart';

// **************************************************************************
// JaguarHttpGenerator
// **************************************************************************

abstract class _$PetsApiClient implements ApiClient {
  final String basePath = "";
  Future<void> createPets() async {
    var req = base.post.path(basePath).path("/pets");
    await req.go(throwOnErr: true);
  }

  Future<List<Pet>> listPets(int limit) async {
    var req = base.get.path(basePath).path("/pets").query("limit", limit);
    return req.go(throwOnErr: true).map(decodeList);
  }

  Future<Pet> showPetById(String petId) async {
    var req =
        base.get.path(basePath).path("/pets/:petId").pathParams("petId", petId);
    return req.go(throwOnErr: true).map(decodeOne);
  }
}
