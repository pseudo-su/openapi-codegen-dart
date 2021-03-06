# simple_petstore_darthttp_sdk.api.PetsApi

## Load the API package
```dart
import 'package:simple_petstore_darthttp_sdk/api.dart';
```

All URIs are relative to *http://petstore.swagger.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPets**](PetsApi.md#createPets) | **POST** /pets | Create a pet
[**listPets**](PetsApi.md#listPets) | **GET** /pets | List all pets
[**showPetById**](PetsApi.md#showPetById) | **GET** /pets/{petId} | Info for a specific pet


# **createPets**
> createPets()

Create a pet

### Example 
```dart
import 'package:simple_petstore_darthttp_sdk/api.dart';

var api_instance = PetsApi();

try { 
    api_instance.createPets();
} catch (e) {
    print("Exception when calling PetsApi->createPets: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPets**
> List<Pet> listPets(limit)

List all pets

### Example 
```dart
import 'package:simple_petstore_darthttp_sdk/api.dart';

var api_instance = PetsApi();
var limit = 56; // int | How many items to return at one time (max 100)

try { 
    var result = api_instance.listPets(limit);
    print(result);
} catch (e) {
    print("Exception when calling PetsApi->listPets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| How many items to return at one time (max 100) | [optional] 

### Return type

[**List<Pet>**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **showPetById**
> Pet showPetById(petId)

Info for a specific pet

### Example 
```dart
import 'package:simple_petstore_darthttp_sdk/api.dart';

var api_instance = PetsApi();
var petId = petId_example; // String | The id of the pet to retrieve

try { 
    var result = api_instance.showPetById(petId);
    print(result);
} catch (e) {
    print("Exception when calling PetsApi->showPetById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petId** | **String**| The id of the pet to retrieve | 

### Return type

[**Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

