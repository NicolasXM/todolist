import 'package:flutter/material.dart';

class NavigatorTwo extends StatelessWidget {
  final String args;
  const NavigatorTwo({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Voltar para a página anterior $args')),
      ),
    );
  }
}
