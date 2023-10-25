import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
              child: SizedBox(
                  width: ekranGenisligi/4,
                  height: ekranYuksekligi/6,
                  child: Image.asset("resimler/img.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ekranGenisligi/7,right: ekranGenisligi/7,bottom: ekranYuksekligi/100),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı",
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ekranGenisligi/7,right: ekranGenisligi/7,top: ekranYuksekligi/100),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre",
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:ekranYuksekligi/30,bottom: ekranYuksekligi/30),
              child: SizedBox(
                width: ekranGenisligi/3,
                height: ekranYuksekligi/12,
                child: ElevatedButton(
                    child: Text("Giriş Yap",style: TextStyle(fontSize: ekranGenisligi/25,color: Colors.white),),
                  onPressed: (){
                      print("Giriş Yapıldı");
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                ),
              ),
            ),
            GestureDetector(
                onTap: (){
                  print("Yardım Seçildi");
                  },
                child:
                Text(
                  "Yardım ?",
                  style:
                  TextStyle(
                      fontSize: ekranGenisligi/30,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                )
            ),
          ],
        ),
      ),
    );
  }
}
