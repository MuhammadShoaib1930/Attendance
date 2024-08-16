
import 'package:flutter/material.dart';
import 'package:mytestaplication/screen_pages.dart/home_page.dart';
import 'package:mytestaplication/screen_pages.dart/login_signin_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();  
}

class _LoginPageState extends State<LoginPage>{
  bool isPassWordObscureText = true;
  bool isEmailValid = false;
  bool isPasswordValid = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  String textEmailPassword = "please enter Email and Password. ";
  Color passWordIconColor =  Colors.grey;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page "),centerTitle: true,shadowColor: Colors.yellow,elevation: 2.0,backgroundColor: Colors.blue.shade700,),
      body: Container(
        color: Colors.grey.shade400,
        child: Center(child: Column(children: [
          const SizedBox(height: 30,),
          SizedBox(
            width: 360,
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                enabled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade500,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                    width: 1.0
            
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: "abc@gmail.com",
                labelText: "Email"
                
              ),
              
            ),
          ),
          const SizedBox(height: 30,),
          SizedBox(
            width: 360,
            child: TextFormField(
              controller: passWordController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade500,
                    width: 2.0
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                    width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                suffixIcon: IconButton(onPressed: (){
                  if(isPassWordObscureText==true){
                    isPassWordObscureText =  false;
                    passWordIconColor = Colors.grey;
                  }else{
                    passWordIconColor = Colors.blue;
                    isPassWordObscureText = true;            
                  }
                }, icon: IconButton(onPressed: (){
                  setState(() {
                    
                  if(isPassWordObscureText){
                    passWordIconColor = Colors.blue;
                    isPassWordObscureText = false;
                  }else{
                    passWordIconColor = Colors.grey;
                    isPassWordObscureText = true;
                  }
                  });
                }, icon: Icon(Icons.remove_red_eye_outlined,color:passWordIconColor)),),
                hintText: "********",
                labelText: "Password"
              ),
              obscureText: isPassWordObscureText,
            
            ),
          ),
            const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
              });
            }, child: const Text("Login")),
            const SizedBox(width: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const  LoginSigninPage()));  
              });
            }, child: const Text("Back")),
        
          ],),
            const SizedBox(height: 30,),
          Text(textEmailPassword)
        ],),),
      ),
    );
  }
}
