import 'package:calisma_yapisi/gameScreen.dart';
import 'package:calisma_yapisi/kisiler.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int sonuc = 0;
  bool kontrol = false;

  Future<int> toplama(int sayi1,int sayi2) async{
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("Resolve: $sonuc"),
              ElevatedButton(onPressed: (){
                setState(() {
                  sonuc += 1;
                });
              }, child: const Text("Plus More")),
            ElevatedButton(onPressed: (){
              setState(() {
                var kisi = Kisiler(ad: "Yusuf", yas: 24, boy: 18.4, bekar: true);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  GameScreen(kisi:kisi)));
              });
            }, child: const Text("Start")),
            Visibility(visible: kontrol, child : Text("Merhaba")),
            Text(kontrol?"Merhaba":"X"),
            Text("Merhaba",style: TextStyle(color: kontrol ? Colors.red: Colors.green),),
            ((){
              if(kontrol){
                return const Text("Test Mesajı True");
              }
              else{
                return const Text("Test Mesajı False");
              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = !kontrol;
              });
            }, child: const Text("Kontrol")),
            FutureBuilder<int>(
              future: toplama(10,30),
              builder: (context,snapshot){
                if(snapshot.hasError){
                  return const Text("Hata oluştu");
                }
                if(snapshot.hasData){
                  return  Text("Sonuç: ${snapshot.data}");
                }
                else{
                  return const Text("Sonuç yok");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
