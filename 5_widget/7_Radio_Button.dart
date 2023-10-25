import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Button Kullanimi',
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

  int radiodeger = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Radio Button Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
                title: Text("Beşiktaş"),
                value: 1,
                groupValue: radiodeger,
                activeColor: Colors.blue,
                onChanged: (int? veri){
                  setState(() {
                    radiodeger = veri!;
                  });
                  print("Beşiktaş seçildi.");
                },
            ),
            RadioListTile(
              title: Text("Galatasaray"),
              value: 2,
              groupValue: radiodeger,
              activeColor: Colors.red,
              onChanged: (int? veri){
                setState(() {
                  radiodeger = veri!;
                });
                print("Galatasaray seçildi.");
              },
            ),
            RadioListTile(
              title: Text("Fenerbahce"),
              value: 3,
              groupValue: radiodeger,
              activeColor: Colors.yellow,
              onChanged: (int? veri){
                setState(() {
                  radiodeger = veri!;
                });
                print("Fenerbahce seçildi.");
              },
            ),
            ElevatedButton(
              child: Text("Göster"),
              onPressed: (){
                if(radiodeger == 1){
                  print("Beşiktaş seçilmiştir.");
                }
                else if (radiodeger == 2){
                  print("Galatasaray seçilmiştir.");
                }
                else{
                  print("Fenerbahçe seçilmiştir.");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
