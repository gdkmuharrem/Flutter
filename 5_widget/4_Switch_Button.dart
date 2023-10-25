import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch Kullanimi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool switchKontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Switch Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
                value: switchKontrol,
                activeTrackColor: Colors.red,
                activeColor: Colors.green,
                inactiveTrackColor: Colors.black,
                inactiveThumbColor: Colors.black38,
                onChanged: (veri){
                  setState(() {
                    switchKontrol = veri;
                  });
                  print("Switch : $veri");
                },
            ),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: (){
                print("Switch Durum : $switchKontrol");
              },
            ),
          ],
        ),
      ),
    );
  }
}
