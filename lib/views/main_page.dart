import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/consts/colors.dart';
import 'package:flutter_calculator/views/calculator_view.dart';
import 'package:flutter_calculator/views/converter_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final List<Widget> tabs = [const CalculatorView(), const ConverterView()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              color: mainButtonColor,
              borderRadius: BorderRadius.circular(6),
            ),
            child: TabBar(
              onTap: (value) => setState(() => index = value),
              tabs: const [
                Tab(text: 'Calculator'),
                Tab(text: 'Converter'),
              ],
            ),
          ),
        ),
        body: TabBarView(children: tabs),
      ),
    );
  }
}
