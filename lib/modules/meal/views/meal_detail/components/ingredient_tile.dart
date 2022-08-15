import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class IngredientTile extends StatefulWidget {
  final String thumbUrl;
  final String title;
  final String measure;
  final ValueChanged<bool?>? onChanged;
  final bool isChecked;

  const IngredientTile({
    Key? key,
    required this.thumbUrl,
    required this.title,
    required this.measure,
    this.isChecked = false,
    this.onChanged,
  }) : super(key: key);

  @override
  State<IngredientTile> createState() => _IngredientTileState();
}

class _IngredientTileState extends State<IngredientTile> {
  bool _isChecked = false;

  void _onChanged(bool? value) {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          width: 20,
          widget.thumbUrl,
          errorBuilder: (_, __, st) {
            return const SizedBox.shrink();
          },
        ),
        Expanded(
          child: ListTile(
            title: CText.xxs(
              widget.title,
              textDecoration: _isChecked ? TextDecoration.lineThrough : null,
            ),
            trailing: CText.xxs(
              widget.measure,
              textDecoration: _isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
        ),
        Checkbox(
          value: _isChecked,
          onChanged: _onChanged,
        ),
      ],
    );
  }
}
