

import 'package:bmi_calculator/shared/style.dart';
import 'package:flutter/material.dart';

class ResultBmiScreen extends StatelessWidget {

  final String title;
  final String score;
  final String comment;


  ResultBmiScreen({required this.title, required this.score, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('BMI Calculator'),


      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text('Your Result is ',
            style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w600),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(40.0),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: containerBackgroundColor),
                child: Column(
                  children: [
                    Text(title ,
                    style: TextStyle(
                      color: Colors.green,
                        fontWeight: FontWeight.w600,
                      fontSize: 30.0
                    ),
                    ),
                    SizedBox(height: 50,),
                    Text(score ,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 120.0
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                    Text(comment,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 25.0
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
