import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/consts/colors.dart';

typedef OnTap = void Function();

class Girder extends StatelessWidget {
  final List<String> children;
  final List<int> rowItemCount;
  final int columnItemCount;
  final OnTap onTap;
  const Girder({
    super.key,
    required this.children,
    required this.rowItemCount,
    required this.columnItemCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    int itemIndex = 0;
    final isConverter = rowItemCount.length != 1;
    Color colorSetter(int index) {
      if (index < 4 && !isConverter) {
        return firstRowButtonColor;
      } else if (index < 3 && isConverter) {
        return firstRowButtonColor;
      } else if (index % 4 == 0 && !isConverter) {
        return accentColor;
      } else {
        return mainButtonColor;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          children: List.generate(
            columnItemCount,
            (rowIndex) {
              return Row(
                children: List.generate(
                  rowItemCount.elementAtOrNull(rowIndex) ?? rowItemCount.last,
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        onPressed: onTap,
                        // ignore: sort_child_properties_last
                        child: Text(children[itemIndex++]),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colorSetter(itemIndex),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
