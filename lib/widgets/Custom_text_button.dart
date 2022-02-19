import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {

  final Color? color;
  final String? text;
  final VoidCallback onPressed;
   CustomTextButton({Key? key, this.color, this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text!,style: TextStyle(
        color: color
      ),),

      style: TextButton.styleFrom(
        minimumSize: Size(100, 50),
backgroundColor: Colors.orange.shade800,
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 25,

        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
      onPressed:onPressed
    );
  }
}
