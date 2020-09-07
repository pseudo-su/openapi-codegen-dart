import 'package:test/test.dart';
import 'package:empty_petstore_dio_sdk/api.dart';

void main() {
  test('create SDK', () {
    var client = EmptyPetstoreDioSdk();
    expect(client.basePath, 'http://petstore.swagger.io/v1');
  });
}
