import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:points_counter_app/widget/custom_button.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatefulWidget {
  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
 int teamScoreA=0;
 int teamScoreB=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter',style: TextStyle(color: Colors.white),),
         backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32,
                      fontFamily: 'Pacifico'),
                    ),
                    Text('$teamScoreA',style: TextStyle(fontSize: 90),),
                   CustomButton(text: 'Add 1 point',onPressed: (){
                    setState(() {
                       teamScoreA++;
                    print(teamScoreA);
                    });
                   
                   },),
                   CustomButton(text: 'Add 2 point',onPressed: (){
                     setState(() {
                       teamScoreA+=2;
                    print(teamScoreA);
                    });
                   
                   },),
                   CustomButton(text: 'Add 3 point',onPressed: (){
                     setState(() {
                       teamScoreA+=3;
                    print(teamScoreA);
                    });
                   
                   }),
                
                  ],
                 
                ),
                SizedBox(
                  height: 300,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 32,fontFamily: 'Pacifico'),
                    ),
                    Text('$teamScoreB',style: TextStyle(fontSize: 90),),
                   CustomButton(text: 'Add 1 point',onPressed: (){
                     setState(() {
                       teamScoreB++;
                    print(teamScoreA);
                    });
                   
                   }),
                   CustomButton(text: 'Add 2 point',onPressed: (){
                     setState(() {
                       teamScoreB+=2;
                    print(teamScoreA);
                    });
                   
                   }),
                   CustomButton(text: 'Add 3 point',onPressed: (){
                     setState(() {
                       teamScoreB+=3;
                    print(teamScoreA);
                    });
                   
                   },),
                
                  ],
                 
                ),
            
              ],
            ),
            Padding(
             padding: EdgeInsets.only(top: 20),
              child: CustomButton(text: 'Reset',onPressed: (){
                setState(() {
                  teamScoreA=0;
                  teamScoreB=0;
                });
              },),
            ),
          ],
        ),
      ),
    );
  }
}
