import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Yemek Tarifi"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: ekranGenisligi,
                child: Image.asset("resimler/kofte.jpg"),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(
                      height: ekranGenisligi/8,
                      child: TextButton(
                          onPressed: (){print("Beğenildi",);},
                          child: Yazi("Beğen",ekranGenisligi/25),
                          style: TextButton.styleFrom(backgroundColor: Colors.orange),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: ekranGenisligi/8,
                      child: TextButton(
                        onPressed: (){print("Yorum Yapıldı",);},
                        child: Yazi("Yorum Yap",ekranGenisligi/25),
                        style: TextButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Köfte",style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi/20
                  ),),
                  Row(
                    children: [
                      Yazi("Izgara Üzerinde Pişirime Uygun", ekranGenisligi/23),
                      Spacer(),
                      Yazi("8 Ağustos", ekranGenisligi/25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/23),
              child: Yazi("Uygun bir yoğurma kabı içerisine kıymamızı alalım. Üzerine rendelenmiş ve suyu sıkılmış soğan, küçük küçük kesilmiş sarımsak, yumurta, galeta unu, sıvı yağ, maydanoz, tuz, karabiber ve kimyonu alalım ve malzemelerimiz güzelce karışana kadar yoğuralım."
                "Hazırladığımız harcımızın üzerini streç ile örtelim ve 30 dakika kadar buzdolabında dinlendirelim."
                "Sürenin sonunda harcımızı dolaptan alalım, elimizle parçalar kopartarak  şekillendirelim. Ben şeklini oval yaptım ancak siz dilediğiniz gibi şekillendirebilirsiniz. Ancak burada köftelerinizin içlerinin de pişmesi için ince olmasına dikkat etmelisiniz."
                "Şekillendirdiğimiz köftelerimizi uygun bir tabak içerisine alalım. Dilerseniz köftelerinizi bu aşamada da dinlendirebilirsiniz."
                "Köftelerimizi pişirmek için ocaktaki tavamıza sıvı yağı alalım ve ısıtalım."
                "Ardından köftelerimizi tavamıza alalım ve her iki tarafını da çevirerek pişirelim."
                "Pişen köftelerimizin fazla yağının süzülmesi için kağıt havlu serdiğimiz tabağa alalım ve servis edelim. Afiyet olsun.", ekranGenisligi/25),
            ),

          ],
        ),
      ),
    );
  }
}
class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyut;

  Yazi(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyut),);
  }
}
