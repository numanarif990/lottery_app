

import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  int x=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("lottery app"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Center(
            child: Text("Lottery winning number is 4",
            style: TextStyle(
              fontSize: 20
            ),
            ),
          ),
           const SizedBox(
             height: 10,
           ),
           Container(
             height: 250,
             width: 350,
             decoration: BoxDecoration(
               color: Colors.grey.withOpacity(0.3),
               borderRadius: BorderRadius.circular(10)
             ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: x == 4 ? Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Icon(Icons.done,
                     size: 50,
                     color: Colors.green,),
                   const SizedBox(
                     height: 10,
                   ),
                   Text("Congratulations you have won the lottery your number is $x",
                     textAlign: TextAlign.center,
                     style: const TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w500
                     ),)
                 ],
               ) : Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Icon(Icons.error,
                     size: 50,
                     color: Colors.red,),
                   const SizedBox(
                     height: 10,
                   ),
                   Text("Better luck next time your number is $x Try again and jeet jaao",
                     textAlign: TextAlign.center,
                     style: const TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w500
                     ),)
                 ],
               ),
             ),
           )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(10);
            print(x);
           print("tap");
           setState(() {

           });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}

