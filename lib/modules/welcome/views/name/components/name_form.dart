import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../application/aplication.dart';
import '../../../../../interfaces/interfaces.dart';
import '../../../store/store.dart';

class NameForm extends StatefulWidget {
  const NameForm({Key? key}) : super(key: key);

  @override
  State<NameForm> createState() => _NameFormState();
}

class _NameFormState extends State<NameForm> {
  final _formStore = serviceLocator<NameFormStore>();
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _formStore.setupValidations();
  }

  @override
  void dispose() {
    _textController.dispose();
    _formStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(builder: (_) {
          return CTextField(
            onChanged: _formStore.setName,
            label: 'Digite um nome',
            errorText: _formStore.error.name,
            textInputAction: TextInputAction.done,
            autoFocus: true,
            maxLength: 8,
            hasError: _formStore.error.hasNameError,
          );
        }),
        const VerticalWhiteSpace(40),
        Observer(
          builder: (_) {
            return GestureDetector(
              onTap: () {
                if (_formStore.name.isEmpty) {
                  _formStore.setError(
                    message: 'Gostaria de saber seu nome, pode ser apelido :)',
                  );
                }
              },
              child: CButton(
                label: 'Continuar',
                onPressed: _formStore.valid
                    ? () => navigateTo(
                          context,
                          routeName: AppRoutes.home,
                          args: _formStore.name,
                        )
                    : null,
              ),
            );
          },
        )
      ],
    );
  }
}
