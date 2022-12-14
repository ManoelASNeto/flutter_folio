import 'package:flutter/material.dart';

class DividerCustom extends StatelessWidget {
  const DividerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(
          color: Colors.white,
          thickness: 2,
          endIndent: 50,
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
