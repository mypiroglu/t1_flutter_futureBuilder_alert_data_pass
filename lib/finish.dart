import 'package:flutter/material.dart';

class FinishScreen extends StatefulWidget{
  const FinishScreen({super.key});

  @override
  State<FinishScreen> createState() => _FinishScreenState();
}

class _FinishScreenState extends State<FinishScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Counter App"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
            }, child: const Text("Back")),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).popUntil((route) => route.isFirst);
              });
            }, child: const Text("Finish"))
          ],
        ),
      ),
    );
  }
}
