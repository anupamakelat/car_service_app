// ignore_for_file: must_be_immutable, prefer_const_constructors, sort_child_properties_last

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/database/addDriver.dart/model.dart';
import 'package:flutter_car_service_app/user/book_detail.dart';

class BookDriver extends StatefulWidget {
  DriverData drivedata;
   BookDriver({super.key,required this.drivedata });
  @override
  State<BookDriver> createState() => _BookDriverState();
}
class _BookDriverState extends State<BookDriver> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
        title: Text('Book your driver'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 90,
            backgroundImage: FileImage(File(widget.drivedata.image.toString())),
       
              child: widget.drivedata.image == null
                  ? Icon(Icons.person, size: 60, color: Colors.white)
                  : null,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("  Driver Name: ${widget.drivedata.name}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
          ),
          ListTile(
            leading: Icon(Icons.class_outlined),
            title: Text("  Driver Phone: ${widget.drivedata.contact}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
          ),
           ListTile(
            leading: Icon(Icons.person_add_alt_rounded),
            title: Text("  Experience: ${widget.drivedata.experience}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text("  Description: ${widget.drivedata.description}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
          ),
          SizedBox(
            height:70 ,
          ),

          InkWell(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetails(driver: widget.drivedata,)));   
            },
            child: Container(child:Align(
               alignment: Alignment.center,
            child: Text('Continue',style:
             TextStyle( fontSize: 18,
              color: Color.fromARGB(255, 16, 15, 13)), ),
          ) ,
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: const Color.fromARGB(255, 235, 228, 228),
                borderRadius: BorderRadius.circular(9)
              
              ),
            ),
          ) , 
        ],
        ),
    
    );
  }
}