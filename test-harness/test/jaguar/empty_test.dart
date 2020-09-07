import 'package:test/test.dart';
import 'package:empty_petstore_jaguar_sdk/api.dart';

void main() {
  test('create SDK', () {
    var client = EmptyPetstoreJaguarSdk();
    expect(client.basePath, 'http://petstore.swagger.io/v1');
  });
}
