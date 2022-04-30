import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final bool disabled;
  final String title;
  final double? titleSize;

  const CustomButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.disabled = false,
      this.titleSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: disabled ? null : onPressed,
        child: Text(title),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) return Colors.green;
            if (states.contains(MaterialState.pressed)) return Colors.blue;
            return Colors.red;
          }),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed))
              return TextStyle(
                  fontSize: titleSize != null ? titleSize! * 2 : 28);

            return TextStyle(fontSize: titleSize);
          }),
        ));
  }
}
