import 'package:flutter/material.dart';

import '../Dashboard/dashboardStudent_view.dart';
import '../Dashboard/dashboard_view.dart';

class ButtonColorCustomWidget extends StatelessWidget {
  final String customText;
  final String pushNamed;
  final Color customColor1;
  final Color customColor2;
  final double? customHigh;
  final bool? addIcon;
  final IconData? customIcon;

  const ButtonColorCustomWidget({
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
          pushNamed != '' ? Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute<Null>(builder:
              (BuildContext context) =>
                  pushNamed == 'student' ? const DashboardStudentView() : const DashboardView()),
                  (Route<dynamic> route) => false): null;
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
