// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/database/addDriver.dart/function.dart';
import 'package:flutter_car_service_app/database/addDriver.dart/model.dart';
import 'package:flutter_car_service_app/user/book_driver.dart';

class DriverView extends StatefulWidget {
  const DriverView({super.key});

  @override
  State<DriverView> createState() => _DriverViewState();
}

class _DriverViewState extends State<DriverView> {
  @override
  void initState() {
    super.initState();
    getdrivers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ValueListenableBuilder(
              valueListenable: driverlist,
              builder: (context, List<DriverData> list, Widget? child) {
                return Expanded(
                  child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        final driverdata = list[index];
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ListTile(onTap:(){  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BookDriver(drivedata: driverdata)));} ,
                                title: Text(driverdata.name!),
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.file(
                                    File('${driverdata.image}',),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 0,
                        );
                      },
                      itemCount: list.length),
                );
              })
        ],
      ),
    );
  }
}
