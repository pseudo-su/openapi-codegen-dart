# OpenAPI codegen in dart

Exploring the different options for generating API client code in dart from an OpenAPI spec.

## Code generation

To re-generate the dart API Clients for the empty, simple and expanded version of the petstore API spec.

```sh
make generate
```

Creates the following using the default `dart` generator:

- `generated/dart-empty-petstore`
- `generated/dart-simple-petstore`
- `generated/dart-expanded-petstore`

Creates the following using the `dart-dio` generator:

- `generated/dio-empty-petstore`
- `generated/dio-simple-petstore`
- `generated/dio-expanded-petstore`

Creates the following using the `dart-jaguar` generator:

- `generated/jaguar-empty-petstore`
- `generated/jaguar-simple-petstore`
- `generated/jaguar-expanded-petstore`

## Tests

The `test-harness` dart package contains tests that use the different variants of the petstore API Clients. It was scaffolded using `stagehand console-full`

The command to exectue the tests is:

```sh
make test
```

## Resources

- [Dart codegen wrapper around `openapi-generator-cli`](https://github.com/gibahjoe/
- [BYO templates](https://openapi-generator.tech/docs/templating)
- [Customization of generated packages](https://openapi-generator.tech/docs/customization)openapi-generator-dart/tree/master/openapi-generator-cli)
- Dart mustache templates used by `openapi-generator-cli`
  - [Dart 2](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources/dart2)
  - [Dart DIO](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources/dart-dio)
  - [Dart Jaguar](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources/dart-jaguar)
  - [Dart (deprecated)](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources/dart)
- [Github Issue #2160 Putting dart tests outside of test/ folder](https://github.com/Dart-Code/Dart-Code/issues/2160)
