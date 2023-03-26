import 'package:erpapp/models/newlist.dart';
import 'package:erpapp/pages/colorclass.dart';
import 'package:erpapp/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';


final nameProvider = Provider<String>((ref) {return 'Hello';});

class MyTask extends ConsumerStatefulWidget {
  const MyTask({Key? key}) : super(key: key);

  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends ConsumerState<MyTask> with SingleTickerProviderStateMixin{
  static const List<Tab> myTabs = <Tab>[
    Tab(text:"My Task",),
    Tab(text: "All Task"),
  ];
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller= TabController(length: myTabs.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    final product = ref.watch(productProvider);
    return Scaffold(
      appBar: AppBar(shadowColor: Colors.red,
        title: "Task Bar".text.make(),
        centerTitle: true,
        backgroundColor: MyColors.primary,
        bottom:
        TabBar(indicatorColor: Colors.green,indicatorWeight: 2,unselectedLabelColor: Colors.black87,
          controller: _controller,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _controller,
          children:
          [Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [const Image(image: AssetImage("assets/images/page.png"),height: 70),
              const SizedBox(height: 10,),
              "HERE, YOU CAN CREATE NEW TASKS".text.bold.lg.xl.make(),
              "You can manage your tasks in order to get things done efficiently".text.xl.center.textStyle(context.captionStyle).make(),
              const Padding(padding: EdgeInsets.only(top: 250)),
            ],
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              verticalDirection: VerticalDirection.down,
              children: [const Image(image: AssetImage("assets/images/page.png"),height: 70),
                const SizedBox(height: 10,),
                "HERE, YOU CAN CREATE NEW TASKS".text.bold.lg.xl.make(),
                "You can manage your tasks in order to get things done efficiently".text.xl.center.textStyle(context.captionStyle).make(),
                const Padding(padding: EdgeInsets.only(top: 250)),

              ],
            ),

          ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {

      },
        backgroundColor: MyColors.primary,
        child: const Icon(Icons.add),),
    );
  }
}





