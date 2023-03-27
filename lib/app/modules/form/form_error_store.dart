import 'package:mobx/mobx.dart';
part 'form_error_store.g.dart';

class FormErrorStore = _FormErrorStoreBase with _$FormErrorStore;

abstract class _FormErrorStoreBase with Store {
  @observable
  String? name;

  @observable
  String? email;

  @observable
  String? password;

  @computed
  bool get hasError => name != null || email != null || password != null;
}
