import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ibnh_child_management/app/modules/form/form_store.dart';

class AddressStepContent extends StatefulWidget {
  const AddressStepContent({super.key});

  @override
  State<AddressStepContent> createState() => _AddressStepContentState();
}

class _AddressStepContentState extends State<AddressStepContent> {
  final FormStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'You mobile number'),
        ),
      ],
    );
  }
}
