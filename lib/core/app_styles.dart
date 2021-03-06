import 'package:flutter/material.dart';
import 'package:meetz/core/core.dart';

final inputHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final inputLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final inputBoxDecorationStyle = BoxDecoration(
  color: AppColors.green800,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

final buttonHomeStyle = ButtonStyle(
    elevation: MaterialStateProperty.all<double>(5.0),
    shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.00))),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 30.00, vertical: 20)));

final roomTitleDecorationStyle = TextStyle(
    color: AppColors.green800,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
    fontSize: 15);

final roomTextDecorationStyle = TextStyle(
    color: AppColors.green800,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
    fontSize: 10);

final titleDecorationStyle = TextStyle(
    color: AppColors.green800,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
    fontSize: 25);

final buttonNoStyle = ButtonStyle(
    elevation: MaterialStateProperty.all<double>(0),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(vertical: 20)));

final buttonGreenStyle = ButtonStyle(
    elevation: MaterialStateProperty.all<double>(5.0),
    shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.00))),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.green800),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 30.00, vertical: 20)));

final buttonRedStyle = ButtonStyle(
    elevation: MaterialStateProperty.all<double>(5.0),
    shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.00))),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 30.00, vertical: 20)));

final TextButtonStyle = TextStyle(
  color: Colors.white,
  letterSpacing: 1.5,
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final infoRoomTextStyle = TextStyle(
    color: AppColors.green800,
    fontFamily: 'OpenSans',
    fontSize: 18,
    fontWeight: FontWeight.w500);
