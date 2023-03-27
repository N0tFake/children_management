import 'package:flutter_modular/flutter_modular.dart';
import 'package:ibnh_child_management/app/modules/form/form_module.dart';

import 'modules/form/form_store.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [Bind.singleton((i) => FormStore())];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/',
        module: HomeModule(), transition: TransitionType.leftToRight),
    ModuleRoute(FormModule.routeName,
        module: FormModule(), transition: TransitionType.rightToLeft)
  ];
}
