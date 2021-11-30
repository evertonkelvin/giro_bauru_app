import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'menu_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giro Bauru',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Giro Bauru'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final dbHelper = DatabaseHelper.instance;

  @override
  Widget build(BuildContext context) {
    getRowDbCount() async {
      var bdLength = await dbHelper.queryRowCount();

      if (bdLength! == 0) {
        await dbHelper.putPlaces();
      }
    }

    getRowDbCount();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giro Bauru'),
        centerTitle: true,
        // actions: <Widget>[
        //   Padding(
        //       padding: const EdgeInsets.only(right: 20.0),
        //       child: GestureDetector(
        //         onTap: () async {
        //           var teste = await dbHelper.putPlaces();
        //           print(teste);
        //         },
        //         child: const Icon(Icons.add),
        //       )),
        //   Padding(
        //       padding: const EdgeInsets.only(right: 20.0),
        //       child: GestureDetector(
        //         onTap: () async {
        //           var teste = await dbHelper.queryRowCount();
        //           print(teste);
        //         },
        //         child: const Icon(Icons.remove_red_eye),
        //       )),
        //   Padding(
        //       padding: const EdgeInsets.only(right: 20.0),
        //       child: GestureDetector(
        //         onTap: () async {
        //           var teste = await dbHelper.deleteAll();
        //           print(teste);
        //         },
        //         child: const Icon(Icons.delete),
        //       ))
        // ],
      ),
      body: const Menu(),
    );
  }
}
