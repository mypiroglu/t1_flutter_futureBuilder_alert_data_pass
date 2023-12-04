import 'package:flutter/material.dart';

class KullaniciEtkilesimi extends StatefulWidget {
  const KullaniciEtkilesimi({super.key});

  @override
  State<KullaniciEtkilesimi> createState() => _KullaniciEtkilesimiState();
}

class _KullaniciEtkilesimiState extends State<KullaniciEtkilesimi> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kullanıcı Etkileşimi"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
               ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: const Text("Silmek İster misin?"),
                  action: SnackBarAction(
                    label: "Evet",
                    onPressed: (){
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: const Text("Silindi")),
                     );
                    },
                  ),
                )
               );
            }, child: const Text("Snackbar")),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.cyanAccent,
                    content: const Text("Silmek İster misin?",style: TextStyle(color: Colors.indigoAccent),),
                    action: SnackBarAction(
                      label: "Evet",
                      textColor: Colors.red,
                      backgroundColor: Colors.amberAccent,
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                              content: const Text("Silindi")),
                        );
                      },
                    ),
                  )
              );
            }, child: const Text("Snackbar (ÖZEL)")),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Başlık"),
                      content: const Text("İçerik"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text("İptal")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          print("Tamam seçildi");
                        }, child: const Text("Tamam"))
                      ],
                    );
                  }
              );
            }, child: const Text("Alert")),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Kayıt İşlemi"),
                      content: TextField(controller: tfControl, decoration:const InputDecoration(hintText:"Veri" ),),
                      backgroundColor: Colors.blue,
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          print("Alınan veri: ${tfControl.text}");
                          tfControl.text = "";
                        }, child: const Text("İptal",style: TextStyle(color: Colors.black12),)),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          print("Tamam seçildi");
                        }, child: const Text("Tamam"))
                      ],
                    );
                  }
              );
            }, child: const Text("ALERT (ÖZEL)")),
          ],
        ),
      ),
    );
  }
}
