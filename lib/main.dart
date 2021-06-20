import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/shared/my_bloc_observer.dart';
import 'package:flutter/material.dart';

import 'modules/bmi/bmi_result/reuslt_screeen.dart';
import 'modules/bmi/calc_screen/calcualte_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CalculateScreen(),
    );
  }
}

