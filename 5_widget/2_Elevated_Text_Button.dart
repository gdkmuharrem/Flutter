import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttonlar',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Buttonlar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Elevated Button",style: TextStyle(color: Colors.white70,),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shadowColor: Colors.black38,
                elevation: 30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(color: Colors.red),
                ),
              ),
              onPressed: (){
                print("Elevated Button tıklandı.");
              },
            ),
            TextButton(
              child: Text("Text Button",style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(
                  shadowColor: Colors.black38,
                  elevation: 30,
              ),
              onPressed: (){
                print("Text Button tıklandı.");
              },
            ),
          ],
        ),
      ),
    );
  }
}
