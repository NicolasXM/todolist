import 'package:flutter/material.dart';
import 'package:todolist/pages/navigator/navigator_two_page.dart';

class NavigatorOne extends StatelessWidget {
  const NavigatorOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/NavigatorTwo', arguments: 'teste')
                  .then((value) => print(value));
            },
            child: Text('Ir para a segunda página')),
      ),
    );
  }
}
