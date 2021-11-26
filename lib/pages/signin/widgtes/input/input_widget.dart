import 'package:flutter/material.dart';
import 'package:meetz/core/core.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?) validator;
  final String label;
  final String placeHolder;
  final IconData icon;

  const InputWidget({
    Key? key,
    required this.label,
    required this.placeHolder,
    required this.icon,
    required this.controller,
    required this.keyboardType,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: inputLabelStyle),
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: inputBoxDecorationStyle,
            height: 60.0,
            child: (TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: true,
              validator: validator,
              style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(icon, color: Colors.white),
                  hintText: placeHolder,
                  hintStyle: inputHintTextStyle),
            )))
      ],
    );
  }
}
