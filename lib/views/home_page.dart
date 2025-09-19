import 'package:flutter/material.dart';
import 'package:my_note/views/widgets/customdrawer.dart';
import 'package:my_note/views/widgets/notes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List todoList = [
    [
      "learn flutter",
      "details",
      DateTime(2024, 6, 10), // Example date
      Colors.blue, // Example color
    ],
    [
      "drink coffee",
      "details two",
      DateTime(2024, 6, 11), // Example date
      Colors.green, // Example color
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CastumDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Notes(),
      ),

      // ListView.builder(
      //   itemCount: todoList.length,
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           color: todoList[index][3],
      //           borderRadius: BorderRadius.circular(16),
      //         ),
      //         // height: 50, // احذف هذا السطر لجعل الارتفاع مرن
      //         width: double.infinity,
      //         // color: todoList[index][3], // كل عنصر بلون مختلف
      //         child: Center(
      //           child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Row(
      //               children: [
      //                 Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     ListTile(
      //                       title: Text("flutter tips"),
      //                       subtitle: Text("this details"),
      //                       trailing: Icon(Icons.delete),
      //                     ),

      //                     ////////////////////////////////////
      //                     // Text(
      //                     //   todoList[index][0],
      //                     //   style: TextStyle(color: Colors.white),
      //                     // ),
      //                     // Text(
      //                     //   todoList[index][1],
      //                     //   style: TextStyle(
      //                     //     color: Colors.white70,
      //                     //     fontSize: 12,
      //                     //   ),
      //                     // ),
      //                     // Text(
      //                     //   // عرض التاريخ بشكل منسق
      //                     //   "${todoList[index][2].day}/${todoList[index][2].month}/${todoList[index][2].year}",
      //                     //   style: TextStyle(
      //                     //     color: Colors.white54,
      //                     //     fontSize: 10,
      //                     //   ),
      //                     // ),
      //                     /////////////////////////////////////////
      //                     // تم حذف الدائرة هنا
      //                   ],
      //                 ),
      //                 Spacer(),
      //                 Icon(Icons.delete),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text("Note app"),
        // backgroundColor: Colors.deepPurple,
        // foregroundColor: Colors.white,
      ),
      // backgroundColor: Colors.purple,
    );
  }
}
