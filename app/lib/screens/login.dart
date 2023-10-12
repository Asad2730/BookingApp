import 'package:app/utils/customTheme.dart';
import 'package:app/widgets/appBar.dart';
import 'package:app/widgets/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  late double wd,ht;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    wd = MediaQuery
        .of(context)
        .size
        .width;
    ht = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        appBar: appbar(),
        backgroundColor: customTheme.primaryColor,
        body: _uiBuild(),
    );
  }


  Widget _uiBuild(){
     return SafeArea(
       child: Stack(
         children: [
           SingleChildScrollView(
             child: Column(
               children: [
                 Image.asset(
                   'assets/Ellipse.png',
                   fit:BoxFit.cover,
                   height: ht * 0.34,
                   width: wd,
                 ),
                 const SizedBox(height: 10,),
                 customText(txt: 'Welcome back', fw: FontWeight.bold, fs: 28, cl: secondaryDark),
                 const SizedBox(height: 10,),
                 customText(txt: 'Log in your account?', fw: FontWeight.bold, fs: 14, cl: greyLight),
                 const SizedBox(height: 10,),
                 inputText(controller: email, hintText: 'example@gmail.com',
                     hideText: false, width: wd  *0.90, height: ht * 0.07),
                 const SizedBox(height: 10),

                 inputText(controller: password, hintText: 'Password',
                     hideText: true, width: wd *0.90, height: ht * 0.07,suffixIcon: Icons.remove_red_eye_outlined),

                 Row(
                   children: [
                     const Expanded(
                       child: Padding(
                       padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                       child: Row(
                         children: [
                           Checkbox(value: false,onChanged: null,),
                           Text('Remember me'),
                         ],
                       ),
                     ),
                     ),
                     Expanded(
                       child: inputTextButton(text: 'Forgot password?', fontWeight: FontWeight.bold, fontSize: 15),
                     ),
                   ],
                 ),

                 const SizedBox(height: 20),
                 inputButton(width: wd *0.90, height: ht * 0.07, text: 'Log In', onPressed: null),
                 const SizedBox(height: 20),
                 customLogos(),
                 const SizedBox(height: 20),

                GestureDetector(
                  onTap: () => Get.toNamed('/register'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(txt: "Don't have an Account? ", fw: FontWeight.w400, fs: 15, cl: secondaryDark),
                      customText(txt: "Create Account", fw: FontWeight.w400, fs: 15, cl: primaryBlue),
                    ],
                  ),
                ),
               ],
             ),
           ),
         ],
       ),
     );
  }

}
