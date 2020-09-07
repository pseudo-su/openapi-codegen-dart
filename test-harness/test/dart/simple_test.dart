import 'package:test/test.dart';
import 'package:simple_petstore_darthttp_sdk/api.dart';

void main() {
  test('create ApiClient', () {
    var client = ApiClient();
    expect(client.basePath, 'http://petstore.swagger.io/v1');
  });
  test('create PetsApi', () {
    var client = ApiClient();
    var api = PetsApi(client);
    expect(api.runtimeType, PetsApi);
  });
  // TODO: add test that uses the sdk
}
