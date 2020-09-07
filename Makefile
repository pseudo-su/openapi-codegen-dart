.PHONY: setup
setup: bin/openapi-generator-cli.jar

.PHONY: test
test:
	cd test-harness && flutter pub run test

.PHONY: generate
generate: generate-darthttp generate-dio generate-jaguar

.PHONY: generate-darthttp
generate-darthttp:
	./generate.sh ./specs/petstore-empty.yaml generated/darthttp/empty-petstore empty_petstore_darthttp_sdk dart
	./generate.sh ./specs/petstore-simple.yaml generated/darthttp/simple-petstore simple_petstore_darthttp_sdk dart
	./generate.sh ./specs/petstore-expanded.yaml generated/darthttp/expanded-petstore expanded_petstore_darthttp_sdk dart

	
.PHONY: generate-dio
generate-dio:
	./generate.sh ./specs/petstore-empty.yaml generated/dio/empty-petstore empty_petstore_dio_sdk dart-dio
	./generate.sh ./specs/petstore-simple.yaml generated/dio/simple-petstore simple_petstore_dio_sdk dart-dio
	./generate.sh ./specs/petstore-expanded.yaml generated/dio/expanded-petstore expanded_petstore_dio_sdk dart-dio

	
.PHONY: generate-jaguar
generate-jaguar:
	./generate.sh ./specs/petstore-empty.yaml generated/jaguar/empty-petstore empty_petstore_jaguar_sdk dart-jaguar
	./generate.sh ./specs/petstore-simple.yaml generated/jaguar/simple-petstore simple_petstore_jaguar_sdk dart-jaguar
	./generate.sh ./specs/petstore-expanded.yaml generated/jaguar/expanded-petstore expanded_petstore_jaguar_sdk dart-jaguar
	
	

bin/openapi-generator-cli.jar:
	wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.0.0-beta2/openapi-generator-cli-5.0.0-beta2.jar -O bin/openapi-generator-cli.jar
