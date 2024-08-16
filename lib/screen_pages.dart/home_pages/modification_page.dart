
import 'package:flutter/material.dart';

class ModificationPage extends StatefulWidget {
  const ModificationPage({super.key});

  @override
  State<ModificationPage> createState() => _ModificationPageState();
}

class _ModificationPageState extends State<ModificationPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(color: Colors.blue,child:const Text("Modification Page"),));
  }
}