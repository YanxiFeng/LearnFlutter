import 'package:flutter/material.dart';
import 'package:learnflutter/generated/l10n.dart';

class HYDineContent extends StatelessWidget {
  const HYDineContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(S.of(context).dine),
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2030));
            },
            child: Text(S.of(context).filter),
          )
        ],
      ),
    );
  }
}
