import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider Kullanimi',
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

  double ilerleme = 31.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Slider Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sonuç : ${ilerleme.toInt()}"),
            Slider(
              max: 200.0,
              min: 0.0,
              value: ilerleme,
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.deepOrangeAccent,
              onChanged: (double i){
                setState(() {
                  ilerleme = i;
                });
              },
            ),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: () {
                print("Slider ilerleme : ${ilerleme.toInt()}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
