

import 'package:flutter/material.dart';

class ElevatedButtonHomePage extends StatelessWidget {
  final Widget? widget;
  final String btName;
  final Function() callBack;
  const ElevatedButtonHomePage({
    super.key,
    required this.callBack(),
    this.widget,
    this.btName="title",
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: callBack, child: widget??Text(btName,style:const TextStyle(fontSize: 25),));
  }
}