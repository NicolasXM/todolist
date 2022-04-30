import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todolist/pages/navigator/navigator_two_page.dart';
import 'package:todolist/widgets/custom_button_widget.dart';

class NavigatorOne extends StatefulWidget {
  const NavigatorOne({Key? key}) : super(key: key);

  @override
  State<NavigatorOne> createState() => _NavigatorOneState();
}

class _NavigatorOneState extends State<NavigatorOne> {
  ValueNotifier<int> valor = ValueNotifier<int>(0);

  random() async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      valor.value = Random().nextInt(1000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: valor,
                builder: (_, value, __) => Text(
                      'Valor é: $value',
                      style: TextStyle(fontSize: 20),
                    )),
            SizedBox(
              height: 10,
            ),
            CustomButtonWidget(
              disabled: false,
              onPressed: () => random(),
              title: 'CustomBtn',
              titleSize: 22,
            ),
          ],
        ),
      ),
    );
  }
}
