import 'dart:ui';

import 'package:erpapp/pages/colorclass.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Mahendrasinh";
    return SafeArea(
      child: Material(
        // padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          children: [
            "Welcome to My Profile".text.xl2.color(Colors.green).bodyText1(context).bold.make(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 26.0, horizontal: 32.0),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "May name is $name",
                    ),
                  // Text("Name:- $name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                ),
                ],
              ),
            ),
          ),
          )
          ],
        ),
      ),

      // child: Material(
      //     child: ListView(
      //       padding: const EdgeInsets.all(10),
      //       children: [
      //         Row(
      //           children: [
      //             "welcome to my profile".text.make(),
      //           ],
      //         )
      //       ],
      //     )
      //
      // ),
    );
  }
}

