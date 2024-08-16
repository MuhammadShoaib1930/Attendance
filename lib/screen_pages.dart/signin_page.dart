
import 'package:flutter/material.dart';
import 'package:mytestaplication/screen_pages.dart/login_signin_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isEmailValid = false;
  bool isPasswordValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page "),centerTitle: true,shadowColor: Colors.yellow,elevation: 2.0,backgroundColor: Colors.blue.shade700,),
      body: Container(
        color: Colors.grey.shade300,
        child: Center(child: Column(
          children: [
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
                  controller: passwordController,
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
                    hintText: " Use 8 digits Uper , Lower , Symbols & Digits ",
                    labelText: "Password"
                    
                  ),
            
          ),),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                String key  =  emailController.text.toString();
                String password  =  passwordController.text.toString();
                setState(() {
                    textEmailPassword = "Email $key  Password $password created new account Successsfully. ";
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginSigninPage()));
                    
                });
              }, child: const Text("Signin")),
              const SizedBox(width: 30,),
              ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginSigninPage()));
                });
              }, child: const Text("Back")),
            ],
          ),
          const SizedBox(height: 30,),
          Text(textEmailPassword)
          ],
        ),
            ),
      ));
  }
  String textEmailPassword = "Please enter an Email and Password. ";

}