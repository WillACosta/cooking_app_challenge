import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final bool autoFocus;
  final bool autocorrect;

  final String label;
  final String? hint;
  final String? errorText;
  final bool? enabled;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final TextEditingController? controller;
  final int? maxLength;
  final bool? hasError;
  final String? initialValue;

  const CTextField({
    Key? key,
    required this.label,
    this.autoFocus = false,
    this.autocorrect = false,
    this.hint,
    this.errorText,
    this.enabled,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onEditingComplete,
    this.controller,
    this.maxLength,
    this.hasError,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Center(child: Text(label)),
        counterText: '',
        errorText: errorText,
      ),
      maxLength: maxLength,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      enabled: enabled,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      autofocus: autocorrect,
      autocorrect: autocorrect,
    );
  }
}
