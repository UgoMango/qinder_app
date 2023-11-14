import 'package:flutter/material.dart';

AppBar buildAppbar(BuildContext context) {
  dynamic icon;
  return AppBar(
      leading: const BackButton(),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(onPressed: () {}, icon: (icon)),
      ]);
}
