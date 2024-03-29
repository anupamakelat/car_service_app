import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/admin/request_details.dart';
import 'package:flutter_car_service_app/database/bookDetails.dart/funtions.dart';
import 'package:flutter_car_service_app/database/bookDetails.dart/model.dart';
import 'package:flutter_car_service_app/user/book_driver.dart';

class MyRequest extends StatefulWidget {
  const MyRequest({super.key});

  @override
  State<MyRequest> createState() => _MyRequestState();
}

class _MyRequestState extends State<MyRequest> {
    void initState() {
    // TODO: implement initState
    super.initState();
    getRequest();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ValueListenableBuilder(
                  valueListenable: requestlist,
                  builder: (context, List<DriverRequest> list, Widget? child) {
                    return SizedBox(height: 1000,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          );
                        },
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          final requestdata = list[index];
                          return InkWell(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (details)=>ReqDetail(requsts: requestdata,))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 15),
                                      child: CircleAvatar(
                                    backgroundImage: FileImage(File(requestdata.image!)),
                                      ),
                                    ),
                                    Text(requestdata.name.toString())
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}