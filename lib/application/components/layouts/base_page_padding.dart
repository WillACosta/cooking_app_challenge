import 'package:flutter/widgets.dart';

class BasePagePadding extends StatelessWidget {
  final Widget child;

  const BasePagePadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        child: child,
      ),
    );
  }
}
