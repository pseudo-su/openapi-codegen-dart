import 'package:test/test.dart';
import 'package:expanded_petstore_dio_sdk/api.dart';

void main() {
  test('create SDK', () {
    var client = ExpandedPetstoreDioSdk();
    expect(client.basePath, 'http://petstore.swagger.io/v1');
  });
  // TODO: add test that uses the sdk
}
