import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toggle_Buttons Kullanimi',
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

  var toggleDurumlar = [false,true,false];
  int secilenToggleIndeks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Toggle_Buttons Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleButtons(
              children: [
                Icon(Icons.looks_one),
                Icon(Icons.looks_two),
                Icon(Icons.looks_3),
              ],
              isSelected: toggleDurumlar,
              color:  Colors.pinkAccent,
              selectedColor: Colors.yellow,
              fillColor: Colors.black38,
              onPressed: (int secilenIndeks){
                setState(() {
                  secilenToggleIndeks = secilenIndeks;
                  toggleDurumlar[secilenToggleIndeks] = !toggleDurumlar[secilenToggleIndeks];
                });
                print("${secilenToggleIndeks+1}.toggle seçildi.");
              },
            ),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: (){
                print("En son ${secilenToggleIndeks+1}.toggle seçildi.");
              },
            ),
          ],
        ),
      ),
    );
  }
}
