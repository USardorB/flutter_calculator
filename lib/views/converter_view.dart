import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/consts/button_labels.dart';
import 'package:flutter_calculator/components/consts/colors.dart';
import 'package:flutter_calculator/components/dotted_border.dart';
import 'package:flutter_calculator/components/girder.dart';

class ConverterView extends StatelessWidget {
  const ConverterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        PopupMenuButton(
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: 'Converter',
                child: Text('Converter'),
              ),
              const PopupMenuItem(
                value: 'Calculator',
                child: Text('Calculator'),
              ),
            ];
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Length',
                style: TextStyle(fontSize: 20, color: secondaryTextColor),
              ),
              Icon(Icons.arrow_drop_down, color: secondaryTextColor),
            ],
          ),
        ),
        ConverterTextField(),
        ConverterTextField(),
        Girder(
          children: converterButtons,
          columnItemCount: 5,
          rowItemCount: const [2, 3],
          onTap: () {},
        )
      ],
    );
  }
}

class ConverterTextField extends StatelessWidget {
  const ConverterTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: CustomPaint(
        painter: DottedBorderPainter(),
        child: TextField(
          style: const TextStyle(fontSize: 40, color: mainTextColor),
          canRequestFocus: false,
          decoration: InputDecoration(
            constraints: const BoxConstraints(maxWidth: 320),
            border: InputBorder.none,
            hintText: '0',
            hintStyle: const TextStyle(fontSize: 40, color: secondaryTextColor),
            contentPadding: const EdgeInsets.all(0),
            suffixIcon: PopupMenuButton(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'km',
                    style: TextStyle(fontSize: 20, color: secondaryTextColor),
                  ),
                  Icon(Icons.arrow_drop_down, color: secondaryTextColor),
                ],
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: 'Converter',
                    child: Text('Converter'),
                  ),
                  const PopupMenuItem(
                    value: 'Calculator',
                    child: Text('Calculator'),
                  ),
                ];
              },
            ),
          ),
        ),
      ),
    );
  }
}
