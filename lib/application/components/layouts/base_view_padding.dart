import 'package:flutter/widgets.dart';

class BaseViewPadding extends StatelessWidget {
  final Widget child;

  const BaseViewPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: child,
      ),
    );
  }
}
