import 'package:flutter/material.dart';
import 'package:toku/components/category_items.dart';
import 'package:toku/screens/numbers_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFEF6DB),
        appBar:AppBar(
          backgroundColor: Color(0xff46322B),
          title:Text('Toku'),
        ),
        body: Column(
          children: [
              Category(
                onTap:() {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (BuildContext context){
                    return NumbersPage();
                  }));
                },
                text: 'Numbers',
                color:Color(0xffEF9235),
              ),
              Category(
                onTap:() {
                
                },
                text: 'FamilyMembers',
                color:Color(0xff558B37),
              ),
              Category(
                onTap:() {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (BuildContext context){
                    return FamilyMemberspage();
                  }));
                },
                text: 'Colors',
                color:Color(0xff79359F),
              ),
              Category(
                onTap:() {
                
                },
                text: 'Phrasses',
                color:Color(0xff50ADC7),
              ),
          ],
          ),
      );
  }
}
