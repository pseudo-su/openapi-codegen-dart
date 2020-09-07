part of simple_petstore_darthttp_sdk.api;



class PetsApi {
  final ApiClient apiClient;

  PetsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a pet with HTTP info returned
  ///
  /// 
  Future createPetsWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/pets".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create a pet
  ///
  /// 
  Future createPets() async {
    Response response = await createPetsWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List all pets with HTTP info returned
  ///
  /// 
  Future<Response> listPetsWithHttpInfo({ int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/pets".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List all pets
  ///
  ///int limit :
  ///     How many items to return at one time (max 100)
  /// 
  Future<List<Pet>> listPets({ int limit }) async {
    Response response = await listPetsWithHttpInfo( limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Pet>') as List).map((item) => item as Pet).toList();
    } else {
      return null;
    }
  }

  /// Info for a specific pet with HTTP info returned
  ///
  /// 
  Future<Response> showPetByIdWithHttpInfo(String petId) async {
    Object postBody;

    // verify required params are set
    if(petId == null) {
     throw ApiException(400, "Missing required param: petId");
    }

    // create path and map variables
    String path = "/pets/{petId}".replaceAll("{format}","json").replaceAll("{" + "petId" + "}", petId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Info for a specific pet
  ///
  ///String petId  (required):
  ///     The id of the pet to retrieve
  /// 
  Future<Pet> showPetById(String petId) async {
    Response response = await showPetByIdWithHttpInfo(petId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Pet') as Pet;
    } else {
      return null;
    }
  }

}
