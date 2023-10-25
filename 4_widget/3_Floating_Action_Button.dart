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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextField(
              decoration: InputDecoration(
                hintText: "Yazınız.",
              ),
            ),
            FloatingActionButton(
              onPressed: (){
                print("Fab 2 tıklandı.");
              },
              tooltip: 'Ye beniii!!!!',
              child: const Icon(Icons.print),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          print("Fab 1 tıklandı.");
        },
        label: Text("TIKLA BANA"),
        icon: const Icon(Icons.account_balance_sharp),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.pinkAccent,
      ),
    );
  }
}
