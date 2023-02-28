import 'package:erpapp/pages/class.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manu Bar"),
        backgroundColor: MyColors.themcolor,
        shadowColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 10,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),
            highlightColor: Colors.white,
            iconSize: 28,
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle),
            highlightColor: Colors.white,
            iconSize: 28,
          ),
        ],
      ),
    );
  }
}
