import 'package:flutter/material.dart';

class AddingNewStudentPage extends StatefulWidget {
  const AddingNewStudentPage({super.key});

  @override
  State<AddingNewStudentPage> createState() => _AddingNewStudentPageState();
}

class _AddingNewStudentPageState extends State<AddingNewStudentPage> {
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Adding new Student. "),centerTitle: true,backgroundColor: Colors.blue.shade800,shadowColor: Colors.grey,elevation: 10.5,),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            children: [
              TextFieldFormConstome(emailController: emailController,hintTexts: "xyz",lableTexts: "Name",),
              TextFieldFormConstome(emailController: emailController,hintTexts: "123",lableTexts: "RollNo",),
              TextFieldFormConstome(emailController: emailController,hintTexts: "BSCS",lableTexts: "Department",),
              TextFieldFormConstome(emailController: emailController,hintTexts: "21 to 24",lableTexts: "Secion",),
              TextFieldFormConstome(emailController: emailController,hintTexts: "C language",lableTexts: "Cource",),
              TextFieldFormConstome(emailController: emailController,hintTexts: "",lableTexts: "",),
              TextFieldFormConstome(emailController: emailController,hintTexts: "",lableTexts: "",),
              TextFieldFormConstome(emailController: emailController,hintTexts: "",lableTexts: "",),
            ],
          ),
        ),
      )



    );
  
  }
}

class TextFieldFormConstome extends StatelessWidget {
  final TextEditingController emailController;
  final String hintTexts;
  final String lableTexts;
  const TextFieldFormConstome({
    super.key,
    required this.emailController,
    required this.hintTexts,
    required this.lableTexts
  });


  @override
  Widget build(BuildContext context) {
    return TextField(
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
      hintText: hintTexts,
      labelText: lableTexts
      
    ),
    );
  }
}