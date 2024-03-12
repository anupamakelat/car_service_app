// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/database/signup/model.dart';

import 'package:hive/hive.dart';

ValueNotifier<List<SignupDetails>> signuplist=ValueNotifier([]);

Future<void>addSignup(SignupDetails value)async{
  final signupDB = await Hive.openBox<SignupDetails>('signup_db');
  final signup = await signupDB.add(value);
  value .id = signup;
  signuplist.value.add(value);
  signuplist.notifyListeners();
  getuser();
}

Future<void> getuser() async {
  final signupDB = await Hive.openBox<SignupDetails>('signup_db');
  signuplist.value.clear();
  signuplist.value.addAll(signupDB.values);
  signuplist.notifyListeners();
}