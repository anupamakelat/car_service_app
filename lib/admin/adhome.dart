// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/admin/driver.dart';
import 'package:flutter_car_service_app/admin/reqest.dart';
import 'package:flutter_car_service_app/common/widgets/admin_appbar.dart';

class ADhome extends StatefulWidget {
  const ADhome({super.key});

  @override
  State<ADhome> createState() => _ADhomeState();
}

class _ADhomeState extends State<ADhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Driver()));
                  },
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrhiChJ6BdjEFIH4PcVywr2cWQ9aUmyLOxuQ&usqp=CAU',
                       // Adjusted height to match the container
                       // Changed to BoxFit.cover to ensure the image fills the container
                      ),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestPage()));
                  },
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrhiChJ6BdjEFIH4PcVywr2cWQ9aUmyLOxuQ&usqp=CAU',
                       // Adjusted height to match the container
                       // Changed to BoxFit.cover to ensure the image fills the container
                      ),
                    ),
                  ),
                ),
                
                
              ],
            ), 
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
               Container(
                    clipBehavior: Clip.antiAlias,
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrhiChJ6BdjEFIH4PcVywr2cWQ9aUmyLOxuQ&usqp=CAU',
                       // Adjusted height to match the container
                       // Changed to BoxFit.cover to ensure the image fills the container
                      ),
                    ),
                  ),
                  Spacer(),
                   Container(
                  clipBehavior: Clip.antiAlias,
                  width: 190,
                  height: 190,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrhiChJ6BdjEFIH4PcVywr2cWQ9aUmyLOxuQ&usqp=CAU',
                     // Adjusted height to match the container
                     // Changed to BoxFit.cover to ensure the image fills the container
                    ),
                  ),
                ),
                
                

            ],
            
            ),
          )
        ],
      ),
    );
  }
}
