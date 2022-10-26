import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String sampleText;
  final String pushNamed;

  const ButtonCustom({
    Key? key,
    required this.sampleText,
    required this.pushNamed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(context, pushNamed);
        },
        child: Text(sampleText),
      ),
    );
  }
}
