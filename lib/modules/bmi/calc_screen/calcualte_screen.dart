import 'package:bmi_calculator/modules/bmi/bmi_result/reuslt_screeen.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:bmi_calculator/shared/cubit/bmi_cubit.dart';
import 'package:bmi_calculator/shared/cubit/bmi_states.dart';
import 'package:bmi_calculator/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../CalculatorBrain.dart';


class CalculateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('BMI Calculator'),
      ),
      backgroundColor: backgroundColor,
      body: BlocProvider(
        create: (context) => BmiCubit(),
        child: BlocConsumer<BmiCubit , BmiStates>(
          listener: (context , states){},
          builder: (context,states){
            var cubit = BmiCubit.get(context);
            return Column(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          // Expanded(
                          //     child: Container(
                          //       color: containerBackgroundColor,
                          //       child: Column(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: [
                          //           Text(
                          //             'Weight',
                          //             style: TextStyle(
                          //               fontSize: 25.0,
                          //               color: Colors.white,
                          //               fontWeight: FontWeight.bold,
                          //             ),
                          //           ),
                          //           SizedBox(
                          //             height: 8,
                          //           ),
                          //           Text(
                          //             '${cubit.weight}',
                          //             style: TextStyle(
                          //               fontSize: 25.0,
                          //               color: Colors.white,
                          //               fontWeight: FontWeight.bold,
                          //             ),
                          //           ),
                          //           SizedBox(
                          //             height: 16.0,
                          //           ),
                          //           Row(
                          //             mainAxisAlignment: MainAxisAlignment.center,
                          //             children: [
                          //               FloatingActionButton(
                          //                 onPressed: () {
                          //                   // cubit.weightDecrement();
                          //                 },
                          //                 mini: true,
                          //                 backgroundColor: buttonBackgroundColor,
                          //                 child: Icon(Icons.remove),
                          //               ),
                          //               SizedBox(
                          //                 width: 8,
                          //               ),
                          //               FloatingActionButton(
                          //                 onPressed: () {
                          //                   // cubit.weightIncrement();
                          //                 },
                          //                 mini: true,
                          //                 backgroundColor: buttonBackgroundColor,
                          //                 child: Icon(Icons.add),
                          //               ),
                          //             ],
                          //           ),
                          //         ],
                          //       ),
                          //     )),
                          // SizedBox(
                          //   width: 16,
                          // ),
                          Expanded(
                              child: Container(
                                color: containerBackgroundColor,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Age',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '${cubit.age}',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            cubit.ageDecrement();

                                          },
                                          backgroundColor: buttonBackgroundColor,
                                          mini: true,
                                          child: Icon(Icons.remove),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {
                                            cubit.ageIncrement();

                                          },
                                          backgroundColor: buttonBackgroundColor,
                                          mini: true,
                                          child: Icon(Icons.add),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    )),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        color: containerBackgroundColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${cubit.height.round()}',
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    )),
                                Text('CM',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Slider(
                              value: cubit.height,
                              onChanged: (value) {
                                cubit.changeBmiHeightState(value);
                              },
                              min: 80,
                              max: 220,
                              activeColor: buttonBackgroundColor,
                              inactiveColor: Color(0xFF242c3c),
                            ),
                          ],
                        ),
                      ),
                    )),
                SizedBox(height: 16,),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        color: containerBackgroundColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${cubit.weight.round()}',
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    )),
                                Text(' Kg ',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Slider(
                              value: cubit.weight,
                              onChanged: (value) {
                                cubit.changeBmiweightState(value);
                              },
                              min: 40,
                              max: 300,
                              activeColor: buttonBackgroundColor,
                              inactiveColor: backgroundColor,
                            ),
                          ],
                        ),
                      ),
                    )),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              cubit.changeGenderToMale();
                            },
                            child: defaultContainer(
                              isMale: cubit.isMale,
                              gender: 'male',
                              icon: Icons.male,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {

                              cubit.changeGenderToFemale();
                            },
                            child: defaultContainer(
                              isMale: !cubit.isMale,
                              gender: 'female',
                              icon: Icons.female,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*.07,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                    onPressed: () {
                      CalculatorBrain culc = CalculatorBrain(
                          weight: cubit.weight,
                          height: cubit.height.round()
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ResultBmiScreen(
                        score: culc.calculateBMI(),
                        title:culc.getResult() ,
                        comment: culc.getInterpretation(),
                      )));

                    },
                    color: buttonBackgroundColor,
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                          letterSpacing: 0.1,
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

