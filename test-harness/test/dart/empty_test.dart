import 'package:test/test.dart';
import 'package:empty_petstore_darthttp_sdk/api.dart';

void main() {
  test('create ApiClient', () {
    var client = ApiClient();
    expect(client.basePath, 'http://petstore.swagger.io/v1');
  });
}
