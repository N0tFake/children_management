import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ibnh_child_management/app/modules/form/form_store.dart';

class BasicDataStepContent extends StatefulWidget {
  const BasicDataStepContent({super.key});

  @override
  State<BasicDataStepContent> createState() => _BasicDataStepContentState();
}

class _BasicDataStepContentState extends State<BasicDataStepContent> {
  final FormStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(
            builder: (_) => TextField(
                  onChanged: (value) => store.name = value,
                  decoration: InputDecoration(
                      labelText: "Nome", errorText: store.error.name),
                )),
        Observer(
            builder: (_) => TextField(
                  onChanged: (value) => store.email = value,
                  decoration: InputDecoration(
                      labelText: "E-mail", errorText: store.error.email),
                )),
        Observer(
            builder: (_) => TextField(
                  onChanged: (value) => store.password = value,
                  decoration: InputDecoration(
                      labelText: "Senha", errorText: store.error.password),
                )),
      ],
    );
  }
}
