
import 'package:calisma_yapisi/finish.dart';
import 'package:flutter/material.dart';
import 'package:calisma_yapisi/kisiler.dart';
class GameScreen extends StatefulWidget {
  late Kisiler kisi;

  GameScreen({required this.kisi});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Future<bool> geriDonusTusu(BuildContext context) async{
    print("Navigation geri tuşu seçildi.");
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        leading: IconButton(onPressed: (){
          print("App bar tuşu seçildi");
        },icon: const Icon(Icons.accessible_forward_sharp)),
      ),
      body: WillPopScope(
        onWillPop: ()=> geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),
              ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const FinishScreen()));
                });
              }, child: const Text("Game"))
            ],
          ),
        ),
      ),
    );
  }
}
