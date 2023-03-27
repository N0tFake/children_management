import 'package:email_validator/email_validator.dart';
import 'package:ibnh_child_management/app/modules/form/form_error_store.dart';
import 'package:mobx/mobx.dart';

part 'form_store.g.dart';

class FormStore = _FormStoreBase with _$FormStore;

abstract class _FormStoreBase with Store {
  final FormErrorStore error = FormErrorStore();

  @observable
  String name = '';
  @action
  void setName(String value) {
    name = value;
  }

  @observable
  String email = '';
  @action
  void setEmail(String value) {
    email = value;
  }

  @observable
  String password = '';
  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  void validadeName(String value) {
    if (value.isEmpty) {
      error.name = 'Cannot be blank';
      return;
    }
    error.name = null;
  }

  @action
  void validadeEmail(String value) {
    error.email = EmailValidator.validate(value) ? null : 'Not a valid Email';
  }

  @action
  void validadePassword(String value) {
    error.password = value.isEmpty ? 'Cannot be blank' : null;
  }

  @action
  bool validateForm() {
    validadeName(name);
    validadeEmail(email);
    validadePassword(password);
    if (error.hasError) {
      return false;
    }
    return true;
  }
}
