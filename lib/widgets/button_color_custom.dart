import 'package:flutter/material.dart';

class ButtonColorCustom extends StatelessWidget {
  final String customText;
  final String pushNamed;
  final Color customColor1;
  final Color customColor2;
  final double? customHigh;
  final bool? addIcon;
  final IconData? customIcon;

  const ButtonColorCustom({
    Key? key,
    required this.customText,
    required this.customColor1,
    required this.customColor2,
    required this.pushNamed,
    this.customHigh,
    this.customIcon,
    this.addIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: customHigh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              customColor1,
              customColor2,
            ]),
      ),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(context, pushNamed);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: (addIcon == true)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Text(
                customText,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    fontFamily: 'Montserrat'),
              ),
              (addIcon == true) ? Icon(customIcon) : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
