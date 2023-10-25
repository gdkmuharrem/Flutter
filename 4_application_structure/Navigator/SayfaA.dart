import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/Kisiler.dart';

import 'SayfaB.dart';

class SayfaA extends StatefulWidget {

  Kisiler kisi;

  SayfaA({required this.kisi});

  @override
  State<SayfaA> createState() => _SayfaAState();


}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Sayfa B'ye Git"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaB()));
              },
            ),
            Text("İsim:${widget.kisi.isim}"),
            Text("Yaş:${widget.kisi.yas}"),
            Text("Boy:${widget.kisi.boy}"),
            Text("Medeni Durum:${widget.kisi.bekarMi}"),
          ],
        ),
      ),
    );
  }
}
