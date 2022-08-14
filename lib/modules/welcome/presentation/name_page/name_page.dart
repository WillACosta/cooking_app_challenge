import 'package:flutter/material.dart';

import '../../../../application/components/components.dart';
import 'components/components.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BasePagePadding(
        child: Column(
          children: [
            const VerticalWhiteSpace(32),
            const NameAnswer(),
            const VerticalWhiteSpace(40),
            CTextField(
              controller: _textController,
              label: 'Digite um nome',
            ),
            const VerticalWhiteSpace(40),
            const CButton(label: 'Continuar'),
          ],
        ),
      ),
    );
  }
}
