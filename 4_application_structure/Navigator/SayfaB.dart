import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    print("Geri Tuşu Tıklandı");
    return false; //Eğer false olursa geri dönüş yapmaz, true olursa yapar.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa B"),

        leading: IconButton(
          onPressed: (){
            print("AppBar geri tuşu tıklandı");
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Geldiği Sayfaya Dön"),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                child: Text("Anasayfa'ya Dön"),
                onPressed: (){
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              ),
              ElevatedButton(
                child: Text("Anasayfa'ya Git"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AnaSayfa()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
