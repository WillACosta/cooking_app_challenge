import 'package:flutter/widgets.dart';

class VerticalWhiteSpace extends StatelessWidget {
  final double height;
  const VerticalWhiteSpace(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
