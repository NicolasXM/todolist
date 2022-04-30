import 'package:flutter/material.dart';
import 'package:todolist/pages/navigator/navigator_two_page.dart';
import 'package:todolist/widgets/custom_button_widget.dart';

class NavigatorOne extends StatefulWidget {
  const NavigatorOne({Key? key}) : super(key: key);

  @override
  State<NavigatorOne> createState() => _NavigatorOneState();
}

class _NavigatorOneState extends State<NavigatorOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          disabled: false,
          onPressed: () {},
          title: 'CustomBtn',
          titleSize: 22,
        ),
      ),
    );
  }
}
