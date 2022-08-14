import 'package:flutter/material.dart';

class CTextField extends StatefulWidget {
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
  }) : super(key: key);

  @override
  State<CTextField> createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        label: Center(child: Text(widget.label)),
      ),
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      enabled: widget.enabled,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      autofocus: widget.autocorrect,
      autocorrect: widget.autocorrect,
    );
  }
}
