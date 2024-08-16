import 'package:flutter/material.dart';
import 'package:mytestaplication/screen_pages.dart/login_page.dart';
import 'package:mytestaplication/screen_pages.dart/signin_page.dart';

class LoginSigninPage extends StatefulWidget {
  
  const LoginSigninPage({super.key});
  @override
  State<LoginSigninPage> createState() => _LoginSigninPageState();
}

class _LoginSigninPageState extends State<LoginSigninPage> {

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(title:const Text("Login and signin page. "),centerTitle: true,backgroundColor: Colors.blue.shade800,shadowColor: Colors.grey,elevation: 10.5,),
      
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
              }, child: const Text("Login")),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SigninPage()));
              }, child: const Text("Sigin")),
            ],
          ),
        ),
      ),
    );
}
}