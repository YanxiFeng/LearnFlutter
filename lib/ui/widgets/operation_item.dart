import 'package:flutter/material.dart';

class HYOperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;

  HYOperationItem(this._icon, this._title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _icon,
        SizedBox(
          width: 3,
        ),
        Text(
          _title,
          style: Theme.of(context).textTheme.body1,
        )
      ],
    );
  }
}
