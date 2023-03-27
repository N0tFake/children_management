import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ibnh_child_management/app/modules/form/form_store.dart';

class ContactsStepContent extends StatefulWidget {
  const ContactsStepContent({super.key});

  @override
  State<ContactsStepContent> createState() => _ContactsStepContentState();
}

class _ContactsStepContentState extends State<ContactsStepContent> {
  final FormStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(labelText: 'Verification code'),
        ),
      ],
    );
  }
}
