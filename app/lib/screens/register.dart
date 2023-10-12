import 'package:app/utils/customTheme.dart';
import 'package:app/widgets/appBar.dart';
import 'package:app/widgets/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LoginState();
}

class _LoginState extends State<Register> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController accountName = TextEditingController();
  late double wd,ht;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    name.dispose();
    accountName.dispose();
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
                  height: ht * 0.20,
                  width: wd,
                ),
                const SizedBox(height: 10,),
                customText(txt: 'Register', fw: FontWeight.bold, fs: 28, cl: customTheme.primaryColorDark),
                const SizedBox(height: 10,),
                customText(txt: 'Create your new account', fw: FontWeight.bold, fs: 14, cl: secondaryDark),
                const SizedBox(height: 10,),
                inputText(controller: name, hintText: 'User name',
                    hideText: false, width: wd  *0.90, height: ht * 0.07),
                const SizedBox(height: 10,),
                inputText(controller: email, hintText: 'example@gmail.com',
                    hideText: false, width: wd  *0.90, height: ht * 0.07),
                const SizedBox(height: 10),
                inputText(controller: accountName, hintText: 'Account display name',
                    hideText: false, width: wd  *0.90, height: ht * 0.07),
                const SizedBox(height: 10,),
                inputText(controller: password, hintText: 'Password',
                    hideText: true, width: wd *0.90, height: ht * 0.07,suffixIcon: Icons.remove_red_eye_outlined),

                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Wrap(
                       children: [
                         customText(
                             txt: 'By signing in you agree to our ',
                             fw: FontWeight.w400,
                             fs: 12,
                             cl: secondaryDark
                         ),
                         customText(
                             txt: 'Terms & Conditions ',
                             fw: FontWeight.w400,
                             fs: 12,
                             cl: secondaryBlue
                         ),
                         customText(
                             txt: 'and ',
                             fw: FontWeight.w400,
                             fs: 12,
                             cl: secondaryDark
                         ),
                         customText(
                             txt: 'Privacy Policy ',
                             fw: FontWeight.w400,
                             fs: 12,
                             cl: secondaryBlue
                         ),
                       ],
                     )
                  ],
                ),

                const SizedBox(height: 20),
                inputButton(width: wd *0.90, height: ht * 0.07, text: 'Log In', onPressed: null),
                const SizedBox(height: 20),
                customLogos(),
                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () => Get.toNamed('/login'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(txt: "Already have an Account? ", fw: FontWeight.w400, fs: 15, cl: secondaryDark),
                      customText(txt: "Log in", fw: FontWeight.w400, fs: 15, cl: primaryBlue),
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
