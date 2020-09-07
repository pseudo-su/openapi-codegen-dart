import 'package:test/test.dart';
import 'package:simple_petstore_jaguar_sdk/api.dart';

void main() {
  test('create SDK', () {
    var client = SimplePetstoreJaguarSdk();
    expect(client.basePath, 'http://petstore.swagger.io/v1');
  });
  // TODO: add test that uses the sdk
}
