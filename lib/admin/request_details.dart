// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/database/bookDetails.dart/model.dart';

class RequestDetails extends StatefulWidget {
  DriverRequest? datas;

  RequestDetails({required this.datas, super.key});

  @override
  State<RequestDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<RequestDetails> {
  bool ?accept;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 6, 49, 83),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 241, 241, 241)),
          title: Text(
            "Booking Details",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 13, right: 13),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Owner name       : ${widget.datas!.name}",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "driver num          : ${widget.datas!.phone}",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text("vehicle model   : ${widget.datas!.model}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 16,
                      ),
                      Text("gear                     :  ${widget.datas!.gear}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 16,
                      ),
                      Text("pickup time       :  ${widget.datas!.pickuptime}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 16,
                      ),
                      Text("pickup address  :  ${widget.datas!.pickuplocation}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 16,
                      ),
                      Text("username            :  ${widget.datas!.username}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 16,
                      ),
                      Text("userphone            :  ${widget.datas!.userphn}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                          "estimatetym         :  ${widget.datas!.estimatetime}",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 0))),
                     accept!=true? Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {setState(() {
                                accept=true;
                              });}, child: Text('Reject')),SizedBox(width: 30,),
                          ElevatedButton(
                              onPressed: () {}, child: Text('Accept'))
                        ],
                      ):SizedBox(child: Text('Rejected'),)
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
