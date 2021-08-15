import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/* ---------------------- image -------------*/
String intro = 'assets/intro.png';

/*-------------------------custom text-------------------------*/
TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) => TextStyle(
    fontWeight: fontWeight,
    wordSpacing: 3,
    color: fontColor,
    fontSize: fontSize);

Widget customText(String text, Color color, double size, {fontWeight}) {
  return Text(text,
      // overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight));
}

Widget customInkWellText(
    Function() onTap, String text, Color color, double size,
    {fontWeight}) {
  return InkWell(
    onTap: onTap,
    child: Text(text,
        style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight)),
  );
}

Widget customRichText(String text1, text2, text3) => RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(text: text1, style: TextStyle(color: black)),
          TextSpan(text: text2, style: TextStyle(color: mainColor)),
          TextSpan(text: text3, style: TextStyle(color: black))
        ],
      ),
      textScaleFactor: 0.5,
    );

Widget customUnderlineText(String text, Color color, double size,
    {fontWeight}) {
  return Text(text,
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ));
}

/// ------------------ color ----------------
final Color violet = Colors.purple;
final Color indigo = Colors.indigo;
final Color black = Colors.black;
final Color grey = Colors.grey;
final Color yellow = Colors.yellow;
final Color orange = Colors.orange;
final Color red = Colors.red;

final Color white = Colors.white;
final Color mainColor = Color(0xffD0719B);
final Color fbBtn = Color(0xff317EC6);
final Color bottomNavBarColor = Color(0xff0f1745);
final Color textColor = Color(0xff40134C);
final Color green = Colors.green;

/*-------------------------Fluttertoast-------------------------*/

showToast(msg, color) => Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
    timeInSecForIosWeb: 1,
    backgroundColor: color,
    textColor: white,
    fontSize: 16.0);

showProgress(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: CupertinoActivityIndicator(
            radius: 25,
          ),
        );
      },
      barrierDismissible: false);
}

void hideProgress(BuildContext context) {
  Navigator.pop(context);
}
