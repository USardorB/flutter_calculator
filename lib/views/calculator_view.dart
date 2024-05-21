import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/consts/button_labels.dart';
import 'package:flutter_calculator/components/consts/colors.dart';
import 'package:flutter_calculator/components/girder.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.access_time),
          label: const Text(
            '1,234',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromHeight(25),
            shape: const StadiumBorder(),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(bottom: 24),
            child: const Text(
              '19,134 ',
              style: TextStyle(fontSize: 64),
            )),
        Container(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
            decoration: const BoxDecoration(color: mainButtonColor),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.undo, size: 24, color: secondaryTextColor),
                  Text(
                    '12,345 + 6,789',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  ),
                ])),
        Girder(
          children: calcButtons,
          columnItemCount: 5,
          rowItemCount: const [4],
          onTap: () {},
        )
      ],
    );
  }
}
