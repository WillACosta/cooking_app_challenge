import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:injectable/injectable.dart';

import '../../../../../application/aplication.dart';
import '../../../../../interfaces/interfaces.dart';
import '../../../store/store.dart';

@injectable
class NameForm extends StatefulWidget {
  const NameForm({Key? key}) : super(key: key);

  @override
  State<NameForm> createState() => _NameFormState();
}

class _NameFormState extends State<NameForm> {
  final _formStore = serviceLocator<NameFormStore>();
  final _userStore = serviceLocator<UserStore>();

  @override
  void initState() {
    super.initState();
    _formStore.setupValidations();
  }

  @override
  void dispose() {
    _formStore.dispose();
    super.dispose();
  }

  void navigate() {
    _userStore.setData(name: _formStore.name);
    navigateTo(context, routeName: AppRoutes.home);
  }

  void ontTap() {
    if (_formStore.name.isEmpty) {
      _formStore.setError(
        message: 'Gostaria de saber seu nome, pode ser apelido :)',
      );
    }
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
              onTap: ontTap,
              child: CButton(
                label: 'Continuar',
                onPressed: _formStore.valid ? navigate : null,
              ),
            );
          },
        )
      ],
    );
  }
}
