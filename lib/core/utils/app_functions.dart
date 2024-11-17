import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'app_colors.dart';

void navigationPushReplacement(context, newRoute) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (ctx) => newRoute),
  );
}

void navigationPush(context, newRoute) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (ctx) => newRoute),
  );
}

customShowToast({
  required String msg,
}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: AppColors.primaryColor,
    textColor: AppColors.white,
  );
}
