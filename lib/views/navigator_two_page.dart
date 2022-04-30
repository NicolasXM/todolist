import 'package:flutter/material.dart';

class NavigatorTwo extends StatelessWidget {
  const NavigatorTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop('Retorno');
            },
            child: Text('Voltar para a página anterior $args')),
      ),
    );
  }
}
