import 'package:erpapp/pages/colorclass.dart';
import 'package:erpapp/pages/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
            title: const Text("Dashboard"),
            backgroundColor: MyColors.primary,
            shadowColor: Colors.deepPurple,
            centerTitle: true,
            toolbarHeight: 60,
            toolbarOpacity: 0.8,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )
            ),

      elevation: 0.0,
          actions: [
            IconButton(onPressed: (){

            }, icon: const Icon(Icons.search),
              highlightColor: Colors.white,
              iconSize: 28,
            ),
          ],
          leading: IconButton(onPressed: (){
            Navigator.pushNamed(context,MyRoutes.profileRoute);
          },
            icon: const Icon(Icons.account_circle),
          ),
        ),backgroundColor: MyColors.white,
      body: Container(
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6),
          children: [
            Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),color: Colors.transparent,border: Border.all(width: 0),),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [IconButton(onPressed: (){},
                  icon: Image.asset("assets/images/contact.png"),iconSize: 100,),
                  Padding(padding: EdgeInsets.all(0)),
                  const Text("Contact",style: TextStyle(color: Colors.black,fontSize: 30))
                ],
              ),
            ),
            Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),color: Colors.transparent,border: Border.all(width: 0),),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [IconButton(onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.taskRoute);
                },
                  icon: Image.asset("assets/images/1.png"),iconSize: 100,),
                  Text("MyProject",style: TextStyle(color: Colors.black,fontSize: 30))
                ],
              ),
            ),
            Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),color: Colors.transparent,border: Border.all(width: 0),),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [IconButton(onPressed: (){},
                  icon: Image.asset("assets/images/contact.png"),iconSize: 100,),
                  Text("Contact",style: TextStyle(color: Colors.black,fontSize: 30))
                ],
              ),
            ),
            Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),color: Colors.transparent,border: Border.all(width: 0),),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [IconButton(onPressed: (){},
                  icon: Image.asset("assets/images/contact.png"),iconSize: 100,),
                  Text("Contact",style: TextStyle(color: Colors.black,fontSize: 30))
                ],
              ),
            ),
          ],),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        // tooltip: Add,
        child: Icon(Icons.add),
      ),
    );










    // Size size = MediaQuery.of(context).size;
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Dashboard"),
    //     backgroundColor: MyColors.primary,
    //     shadowColor: Colors.deepPurple,
    //     centerTitle: true,
    //     toolbarHeight: 60,
    //     toolbarOpacity: 0.8,
    //     shape: const RoundedRectangleBorder(
    //       borderRadius: BorderRadius.only(
    //         bottomRight: Radius.circular(20),
    //         bottomLeft: Radius.circular(20),
    //       )
    //     ),
    //     elevation: 0.0,
    //     actions: [
    //       IconButton(onPressed: (){
    //
    //       }, icon: const Icon(Icons.search),
    //         highlightColor: Colors.white,
    //         iconSize: 28,
    //       ),
    //     ],
    //     leading: IconButton(onPressed: (){
    //       Navigator.pushNamed(context,MyRoutes.profileRoute);
    //     },
    //       icon: const Icon(Icons.account_circle),
    //     ),
    //   ),
    //
    //   body: GridView.count(
    //     primary: false,
    //     padding: const EdgeInsets.all(10),
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,
    //     crossAxisCount: 2,
    //     children: <Widget>[
    //       Column(
    //         children: [
    //           Center(
    //             child: Container(
    //               decoration: BoxDecoration(
    //                   shape: BoxShape.rectangle,
    //               color: Colors.transparent,
    //               border: Border.all(width: 0),
    //                   borderRadius: BorderRadius.circular(8)),
    //               padding: const EdgeInsets.all(40),
    //               // color: MyColors.white,
    //               child:
    //               IconButton(onPressed: () {},
    //                 icon: Image.asset("assets/images/contact.png"),
    //                 highlightColor: MyColors.primary,
    //                 color: MyColors.primary,
    //                 iconSize: 80,
    //               ),
    //
    //               ),
    //           ),
    //         ],
    //       ),
    //           Column(
    //           children: [
    //           Center(
    //           child: Container(
    //             decoration: BoxDecoration(
    //                 shape: BoxShape.rectangle,
    //                 color: Colors.transparent,
    //                 border: Border.all(width: 0),
    //                 borderRadius: BorderRadius.circular(10)),
    //           padding: const EdgeInsets.all(40),
    //           // color: Colors.teal[100],
    //           child: IconButton(onPressed: ()
    //           {
    //           },
    //           icon: const Icon(Icons.account_circle),
    //           highlightColor: Colors.green,
    //           iconSize: 80,
    //           ),
    //           ),
    //           ),
    //           ],
    //           ),
    //       Column(
    //         children: [
    //           Center(
    //             child: Container(
    //               decoration: BoxDecoration(
    //                   shape: BoxShape.rectangle,
    //                   color: Colors.transparent,
    //                   border: Border.all(width: 0),
    //                   borderRadius: BorderRadius.circular(10)),
    //               padding: const EdgeInsets.all(40),
    //               // color: Colors.teal[100],
    //               child: IconButton(onPressed: ()
    //               {
    //               },
    //                 icon: const Icon(Icons.account_circle),
    //                 highlightColor: Colors.white,
    //                 iconSize: 80,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //       Column(
    //           children: [
    //           Center(
    //             child: Container(
    //               decoration: BoxDecoration(
    //                   shape: BoxShape.rectangle,
    //                   color: Colors.transparent,
    //                   border: Border.all(width: 0),
    //               borderRadius: BorderRadius.circular(10)),
    //               padding: const EdgeInsets.all(40),
    //               // color: Colors.teal[100],
    //               child: IconButton(onPressed: ()
    //               {
    //               },
    //                 icon: const Icon(Icons.account_circle),
    //                 highlightColor: Colors.white,
    //                 iconSize: 80,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   )
    // );
  }
}
