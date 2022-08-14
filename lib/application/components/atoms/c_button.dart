import 'package:cooking_home/application/utils/utils.dart';
import 'package:flutter/material.dart';

enum CButtonKind { primary, secondary, inactive }

class CButton extends StatelessWidget {
  final CButtonKind kind;
  final VoidCallback? onPressed;
  final String? label;
  final Widget? child;

  const CButton({
    Key? key,
    this.kind = CButtonKind.primary,
    this.onPressed,
    this.label,
    this.child,
  }) : super(key: key);

  bool get _hasLabel => label != null;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: _hasLabel
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label!,
                  textAlign: TextAlign.center,
                ),
              ],
            )
          : child,
    );
  }
}
