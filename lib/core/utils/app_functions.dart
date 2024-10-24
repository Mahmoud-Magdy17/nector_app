import 'package:flutter/material.dart';

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
