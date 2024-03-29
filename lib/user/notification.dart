import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/admin/driver.dart';
import 'package:flutter_car_service_app/admin/reqest.dart';
import 'package:flutter_car_service_app/database/bookDetails.dart/funtions.dart';
import 'package:flutter_car_service_app/user/my_request.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({super.key});

  @override
  State<MyNotification> createState() => _OrdersState();
}

class _OrdersState extends State<MyNotification> {

@override


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'My Order',
            style: GoogleFonts.rubik(
                fontWeight: FontWeight.w500, color: Colors.black, fontSize: 22),
          ),
          centerTitle: true,
          bottom: TabBar(
              tabs: const [
                Tab(
                  text: 'My Request',
                ),
                Tab(
                  text: 'Notification',
                ),
              ],
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              indicatorWeight: 3,
              labelStyle: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500)),
        ),
        body: TabBarView(
          children: const [MyRequest()],
        ),
      ),
    );
  }
}