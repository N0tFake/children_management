import 'package:flutter_test/flutter_test.dart';
import 'package:ibnh_child_management/app/modules/form/form_store.dart';
 
void main() {
  late FormStore store;

  setUpAll(() {
    store = FormStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}