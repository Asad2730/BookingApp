
import 'package:app/utils/customTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget inputText({
  required TextEditingController controller,
  required String hintText,
  required bool hideText,
  required double width,
  required double height,
  IconData? suffixIcon,
  VoidCallback? onSuffixIconPressed,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: TextField(
      controller: controller,
      obscureText: hideText,
      onChanged: (text) => controller.text = text,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: customTheme.primaryColor,
        hintStyle: const TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
        suffixIcon: suffixIcon != null
            ? IconButton(
          icon: Icon(suffixIcon),
          onPressed: onSuffixIconPressed,
        )
            : null, // Display the suffix icon only if it's provided
      ),
    ),
  );
}


Widget inputButton({
  required double width,
  required double height,
  required String text,
  required Function()? onPressed,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color:primaryBlue,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style:  TextStyle(
            color: customTheme.primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}



Widget inputTextButton({
  required text,
  VoidCallback ? onPressed,
  required FontWeight fontWeight,
  required double fontSize
}){
  return  TextButton(
    onPressed: ()=> onPressed!(),
    child:  Text(
      text,
      style:TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: primaryBlue,
      ),
    ),
  );
}


Widget customText({
 required String txt,
 required FontWeight fw,
 required double fs,
  required Color cl
}){

  return Text(
      txt,
      style: TextStyle(
        fontWeight: fw,
        fontSize: fs,
        color: cl,
      ),
  );
}


Widget customLogos(){
  return  Row(
    children: [
      Flexible(
        child: SvgPicture.asset('assets/google.svg',height: 60,width: 60),
      ),
      Flexible(
        child: SvgPicture.asset('assets/fb.svg',height: 60,width: 60,),
      ),
      Flexible(
        child: SvgPicture.asset('assets/apple.svg',height: 60,width: 60),
      ),
    ],
  );
}