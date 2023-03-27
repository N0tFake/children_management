import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ibnh_child_management/app/modules/form/components/stepper/stepper.dart';
import 'package:ibnh_child_management/app/modules/form/form_store.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  final String title;
  const FormPage({Key? key, this.title = 'FormPage'}) : super(key: key);
  @override
  FormPageState createState() => FormPageState();
}

class FormPageState extends State<FormPage> {
  final FormStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.title),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Modular.to.navigate('/'),
            )),
        body: Container(
          child: StepperComponent(),
        ));
  }
}

/* 

Column(
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
          ElevatedButton(
              onPressed: store.validateForm, child: const Text("Confirmar"))
        ],
      ),
 */