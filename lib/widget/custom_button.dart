import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
final String text;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder()),
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
              onPressed: onPressed, child: Text(text,style: TextStyle(color: Colors.black,fontFamily: 'Pacifico'),),);
  }
}