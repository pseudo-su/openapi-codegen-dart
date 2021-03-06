# simple_petstore_jaguar_sdk
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [Open API Codegen](https://github.com/OpenAPITools/openapi-generator) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartJaguarClientCodegen

## Requirements

Dart 2 or later OR Flutter 0.7.0 or later.

Once your code is generated, you need to run the build_runner command to let Jaguar implement your API:

```sh
flutter packages pub run build_runner build
or
pub run build_runner build
```

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: simple_petstore_jaguar_sdk
version: 1.0.0
description: OpenAPI API client
dependencies:
  simple_petstore_jaguar_sdk:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  simple_petstore_jaguar_sdk:
    path: /path/to/simple_petstore_jaguar_sdk
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:simple_petstore_jaguar_sdk/api.dart';


final jaguarApiGen = SimplePetstoreJaguarSdk();
var api_instance = jaguarApiGen.getPetsApi();

try {
    api_instance.createPets();
} catch (e) {
    print("Exception when calling PetsApi->createPets: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://petstore.swagger.io/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PetsApi* | [**createPets**](doc//PetsApi.md#createpets) | **Post** /pets | Create a pet
*PetsApi* | [**listPets**](doc//PetsApi.md#listpets) | **Get** /pets | List all pets
*PetsApi* | [**showPetById**](doc//PetsApi.md#showpetbyid) | **Get** /pets/:petId | Info for a specific pet


## Documentation For Models

 - [Error](doc//Error.md)
 - [Pet](doc//Pet.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




