import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Mobile - Dherisma',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'My App'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
             body: ListView(children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(18.0),
                child:
                    const Text("BERITA TERBARU", textAlign: TextAlign.center),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  "PERTANDINGAN HARI INI",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),

        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(0.0),
                child: Image.asset('assets/barca_1.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  "Barcelona FC - Hasil rating Pemain",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(21.0),
                color: Colors.purple,
                width: MediaQuery.of(context).size.width,
                child: const Text("Squad Barcelona"),
              )
            ],
          ),
        ),

        const SizedBox(height: 10.0,),

        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue)
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset("assets/barca_2.jpg"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text("Barcelona tebar peringatan untuk lawan lewat foto--Selebrasi ini", textAlign: TextAlign.justify,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "New Years 2022",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,),
                  ),
                )
              ],
            ),
          ),

        const SizedBox(height: 10.0,),

        Container(

          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue)
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(0.0),
                          // child: Image.asset("assets/images/foto2.jpeg"),
                          child: Image.asset("assets/barca_3.jpg"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text("FC Barcelona players registered for 2022/2023 Champions League", 
                          textAlign: TextAlign.justify,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "London Sept 13, 2022",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,),
                  ),
                )
              ],
            ),
          ),
             ]),
    );
  }
}
