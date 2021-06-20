import 'package:flutter/material.dart';

Widget defaultContainer(
        {required bool isMale,
        required String gender,
        required IconData icon}) =>
    Container(
      color: isMale ? Color(0xFF111328) : Color(0xFF363c50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 100,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            gender,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    );

/*
Container(
color: isMale ? Colors.orange[200]: Colors.grey[400] ,
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(
Icons.male,
size: 100,
),
SizedBox(
height: 10,
),
Text(
'Male',
style: TextStyle(
color: Colors.black,
fontSize: 18.0,
),
)
],
),
)*/
