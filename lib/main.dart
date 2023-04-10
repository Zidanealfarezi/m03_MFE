import 'package:flutter/material.dart';
import 'package:flutter_application_button/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // home: const MyHomePage(
      //   title: 'Todos',
      // ),
      home: TestScreen(),
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
  int _counter = 0;

  get padding => null;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(children: [
            Icon(Icons.list_alt),
            Text('Keterangan'),
            Container(
              width: 200,
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Judul Kegiatan',
                ),
              ),
            ),
          ]),
          Row(children: [
            Icon(Icons.sort),
            Text('Keterangan'),
          ]),
          Container(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Tambah Keterangan',
              ),
            ),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Icon(Icons.calendar_month),
            Text('Tanggal Mulai'),
            Padding(padding: EdgeInsets.all(20.0)),
            Icon(Icons.calendar_month),
            Text('Tanggal Selesai')
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: '20-03-2022',
                ),
              ),
            ),
            Container(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: '20-03-2022',
                ),
              ),
            )
          ]),
          Row(children: [
            Icon(Icons.category),
            Text('kategori'),
          ]),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Batal'),
                  ),
                ),
                Container(
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Simpan'),
                  ),
                )
              ],
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
