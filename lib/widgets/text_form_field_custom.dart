import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? var_hintText;
  final String? var_labelText;
  final TextInputType? var_keyboardType;
  final IconData? var_suffixIcon;
  final bool var_obscureText;

  const TextFormFieldCustom({
    Key? key,
    this.var_hintText,
    this.var_labelText,
    this.var_keyboardType,
    this.var_suffixIcon,
    required this.var_obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: var_obscureText,
      keyboardType: var_keyboardType,
      decoration: InputDecoration(
          hintText: var_hintText,
          labelText: var_labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          suffixIcon: Icon(var_suffixIcon)),
    );
  }
}
