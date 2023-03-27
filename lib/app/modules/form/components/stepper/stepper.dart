import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ibnh_child_management/app/modules/form/components/stepper/steps_content/address.dart';
import 'package:ibnh_child_management/app/modules/form/components/stepper/steps_content/basic_data.dart';
import 'package:ibnh_child_management/app/modules/form/form_store.dart';

class StepperComponent extends StatefulWidget {
  const StepperComponent({super.key});

  @override
  State<StepperComponent> createState() => _StepperComponentState();
}

class _StepperComponentState extends State<StepperComponent> {
  final FormStore store = Modular.get();

  int _currentStep = 0;

  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  _stepContinue() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.horizontal,
      physics: const ScrollPhysics(),
      currentStep: _currentStep,
      onStepTapped: (step) => _stepTapped(step),
      //onStepContinue: _stepContinue,
      //onStepCancel: _stepCancel,
      controlsBuilder: (context, details) {
        return Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  if (store.validateForm()) {
                    _stepContinue();
                  }
                },
                child: const Text("Confirmar")),
            TextButton(
                onPressed: details.onStepCancel,
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        );
      },
      steps: [
        // The first step: Name
        Step(
          title: const Text('Dados Basicos'),
          content: const BasicDataStepContent(),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
        // The second step: Phone number
        Step(
          title: const Text('Endereço'),
          content: const AddressStepContent(),
          isActive: _currentStep >= 0,
          state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
        ),
        // The third step: Verify phone number
        Step(
          title: const Text('Contatos'),
          content: const AddressStepContent(),
          isActive: _currentStep >= 0,
          state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
        ),
      ],
    );
  }
}
