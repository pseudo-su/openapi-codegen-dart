# expanded_petstore_jaguar_sdk.api.PetsApi

## Load the API package
```dart
import 'package:expanded_petstore_jaguar_sdk/api.dart';
```

All URIs are relative to *http://petstore.swagger.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPet**](PetsApi.md#addPet) | **Post** /pets | 
[**deletePet**](PetsApi.md#deletePet) | **Delete** /pets/:id | 
[**findPetById**](PetsApi.md#findPetById) | **Get** /pets/:id | 
[**findPets**](PetsApi.md#findPets) | **Get** /pets | 


# **addPet**
> Pet addPet(newPet)



Creates a new pet in the store. Duplicates are allowed

### Example 
```dart
import 'package:expanded_petstore_jaguar_sdk/api.dart';

var api_instance = new PetsApi();
var newPet = new NewPet(); // NewPet | Pet to add to the store

try { 
    var result = api_instance.addPet(newPet);
    print(result);
} catch (e) {
    print("Exception when calling PetsApi->addPet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newPet** | [**NewPet**](NewPet.md)| Pet to add to the store | 

### Return type

[**Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePet**
> deletePet(id)



deletes a single pet based on the ID supplied

### Example 
```dart
import 'package:expanded_petstore_jaguar_sdk/api.dart';

var api_instance = new PetsApi();
var id = 789; // int | ID of pet to delete

try { 
    api_instance.deletePet(id);
} catch (e) {
    print("Exception when calling PetsApi->deletePet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of pet to delete | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPetById**
> Pet findPetById(id)



Returns a user based on a single ID, if the user does not have access to the pet

### Example 
```dart
import 'package:expanded_petstore_jaguar_sdk/api.dart';

var api_instance = new PetsApi();
var id = 789; // int | ID of pet to fetch

try { 
    var result = api_instance.findPetById(id);
    print(result);
} catch (e) {
    print("Exception when calling PetsApi->findPetById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of pet to fetch | [default to null]

### Return type

[**Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findPets**
> List<Pet> findPets(tags, limit)



Returns all pets from the system that the user has access to Nam sed condimentum est. Maecenas tempor sagittis sapien, nec rhoncus sem sagittis sit amet. Aenean at gravida augue, ac iaculis sem. Curabitur odio lorem, ornare eget elementum nec, cursus id lectus. Duis mi turpis, pulvinar ac eros ac, tincidunt varius justo. In hac habitasse platea dictumst. Integer at adipiscing ante, a sagittis ligula. Aenean pharetra tempor ante molestie imperdiet. Vivamus id aliquam diam. Cras quis velit non tortor eleifend sagittis. Praesent at enim pharetra urna volutpat venenatis eget eget mauris. In eleifend fermentum facilisis. Praesent enim enim, gravida ac sodales sed, placerat id erat. Suspendisse lacus dolor, consectetur non augue vel, vehicula interdum libero. Morbi euismod sagittis libero sed lacinia.  Sed tempus felis lobortis leo pulvinar rutrum. Nam mattis velit nisl, eu condimentum ligula luctus nec. Phasellus semper velit eget aliquet faucibus. In a mattis elit. Phasellus vel urna viverra, condimentum lorem id, rhoncus nibh. Ut pellentesque posuere elementum. Sed a varius odio. Morbi rhoncus ligula libero, vel eleifend nunc tristique vitae. Fusce et sem dui. Aenean nec scelerisque tortor. Fusce malesuada accumsan magna vel tempus. Quisque mollis felis eu dolor tristique, sit amet auctor felis gravida. Sed libero lorem, molestie sed nisl in, accumsan tempor nisi. Fusce sollicitudin massa ut lacinia mattis. Sed vel eleifend lorem. Pellentesque vitae felis pretium, pulvinar elit eu, euismod sapien. 

### Example 
```dart
import 'package:expanded_petstore_jaguar_sdk/api.dart';

var api_instance = new PetsApi();
var tags = []; // List<String> | tags to filter by
var limit = 56; // int | maximum number of results to return

try { 
    var result = api_instance.findPets(tags, limit);
    print(result);
} catch (e) {
    print("Exception when calling PetsApi->findPets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**List&lt;String&gt;**](String.md)| tags to filter by | [optional] [default to const []]
 **limit** | **int**| maximum number of results to return | [optional] [default to null]

### Return type

[**List<Pet>**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

