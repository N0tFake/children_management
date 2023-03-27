import 'package:ibnh_child_management/app/modules/form/form_page.dart';
import 'package:ibnh_child_management/app/modules/form/form_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FormModule extends Module {
  static String get routeName => '/form';
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => FormStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => FormPage()),
  ];
}
