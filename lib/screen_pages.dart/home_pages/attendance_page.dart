
import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(color: Colors.blue,child: const Text("AttendancePage"),));
  }
}