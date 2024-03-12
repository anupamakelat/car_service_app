import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/common/splash.dart';
import 'package:flutter_car_service_app/database/signup/model.dart';

import 'package:hive_flutter/adapters.dart';

Future<void>main()async {
   WidgetsFlutterBinding.ensureInitialized();

   await Hive.initFlutter();
   Hive.openBox<SignupDetails>('signup_db');



   if(!Hive.isAdapterRegistered(SignupDetailsAdapter().typeId))
   Hive.registerAdapter(SignupDetailsAdapter());

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
        useMaterial3: true,
      ),
      home: const MySplash(),
    );
  }
}

