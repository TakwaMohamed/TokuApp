import'package:flutter/material.dart';
class Category extends StatelessWidget
 {
  Category({this.text,this.color,this.onTap});
  String? text; //null safty
  Color? color; //null safty
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                padding: EdgeInsets.only(left:20),
                alignment:Alignment.centerLeft,
                height: 60,
                width: double.infinity,
                color:color,
                child: Text( text!,
                  style:TextStyle(color: Colors.white, fontSize:22,)
                ),
                ),
    );
  }
}