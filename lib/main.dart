// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/common/splash.dart';
import 'package:flutter_car_service_app/database/addDriver.dart/model.dart';
import 'package:flutter_car_service_app/database/bookDetails.dart/model.dart';
import 'package:flutter_car_service_app/database/signup/model.dart';

import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.openBox<SignupDetails>('signup_db');
  Hive.openBox<DriverData>('addDetails');
  Hive.openBox<DriverRequest>('addRequest');

  if (!Hive.isAdapterRegistered(SignupDetailsAdapter().typeId))
    Hive.registerAdapter(SignupDetailsAdapter());

  if (!Hive.isAdapterRegistered(DriverDataAdapter().typeId))
    Hive.registerAdapter(DriverDataAdapter());

  if (!Hive.isAdapterRegistered(DriverRequestAdapter().typeId))
    Hive.registerAdapter(DriverRequestAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MySplash(),
    );
  }
}
