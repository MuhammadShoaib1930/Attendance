
import 'package:flutter/material.dart';
import 'package:mytestaplication/screen_pages.dart/home_pages/adding_new_student_page.dart';
import 'package:mytestaplication/screen_pages.dart/home_pages/attendance_page.dart';
import 'package:mytestaplication/screen_pages.dart/home_pages/delete_page.dart';
import 'package:mytestaplication/screen_pages.dart/home_pages/modification_page.dart';
import 'package:mytestaplication/screen_pages.dart/home_pages/search_page.dart';
import 'package:mytestaplication/screen_pages.dart/home_pages/viwe_all_page.dart';
import 'package:mytestaplication/screen_pages.dart/login_signin_page.dart';
import 'package:mytestaplication/widget/elevated_button_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Home Page ",style: TextStyle(color: Colors.yellow),),centerTitle: true,shadowColor: Colors.brown,elevation: 20.0,backgroundColor: Colors.grey.shade900,),
    body:  Container(
      color: Colors.grey.shade400,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: ElevatedButtonHomePage(btName: " Attendance ", callBack: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const AttendancePage()));
              }),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: ElevatedButtonHomePage(btName: " Adding new Student ", callBack: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const AddingNewStudentPage()));
              }),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: ElevatedButtonHomePage(btName: " Viwe ", callBack: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const ViweAllPage()));
              }),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: ElevatedButtonHomePage(btName: " Modification ", callBack: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const ModificationPage()));
              }),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: ElevatedButtonHomePage(btName: " Search ", callBack: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SearchPage()));
              }),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: ElevatedButtonHomePage(btName: " Delete ", callBack: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const  DeletePage()));
              }),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: ElevatedButtonHomePage(btName: " Logout ", callBack: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const LoginSigninPage()));
              }),
            ),
          ],
        ),
      ),
    )
    );
  }
}


