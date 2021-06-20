import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bmi_states.dart';

class BmiCubit extends Cubit<BmiStates> {
  BmiCubit() : super(BmiInitialState());

  static BmiCubit get(context)=> BlocProvider.of(context);

  bool isMale =true;

  int age = 18;

  double weight = 70;

  double height = 160;



  void changeGenderToFemale() {
    isMale = false;
    emit(BmiChangeFemaleState());
  }

  void changeBmiHeightState (double value){
    height = value;
    emit(BmiHeightState());


  }

  void changeGenderToMale() {
    isMale = true;
    emit(BmiChangeMaleState());
  }


  void ageIncrement() {
    age++;
    emit(BmiAgeIncrementState());
  }
  void ageDecrement() {
    age--;
    emit(BmiAgeDecrementState());
  }

  // void weightIncrement() {
  //   weight++;
  //   emit(BmiWeightIncrementState());
  // }

  void changeBmiweightState (double value){
    weight = value;
    emit(BmiHeightState());

  }
  //
  // void weightDecrement() {
  //   weight--;
  //   emit(BmiWeightDecrementState());
  // }
}
