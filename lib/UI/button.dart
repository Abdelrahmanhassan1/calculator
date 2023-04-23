import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;
  final Function onPressed;
  const Button({super.key, required this.btnText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // add margin to the button
      child: Container(
        margin: const EdgeInsets.all(5),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            elevation: 5,
            backgroundColor: Colors.amber,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          // detect on button press to update the display
          onPressed: () {
            onPressed();
          },
          child: Text(
            btnText,
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
