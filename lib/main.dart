import 'package:flutter/material.dart';

//Cesar Melchor Alfaro 6"J" A
void main() => runApp(BordesAPP());

class BordesAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Agregando Bordes APP de Melchor'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
        title: Text(title),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(padding: const EdgeInsetsDirectional.fromSTEB(50, 5, 50, 15), child: Material(borderRadius: BorderRadius.circular(20), elevation: 10, child: Container(width: double.infinity, height: 80, decoration: BoxDecoration(border: Border.all(color: Colors.red.shade900, width: 3.0), borderRadius: BorderRadius.circular(20)), child: Center(child: Text('Cesar Melchor Alfaro'))))),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.red.shade900,
                width: 5.0,
              ),
              bottom: BorderSide(
                color: Colors.red.shade900,
                width: 5.0,
              ),
            ),
          ),
          child: Image.network('https://raw.githubusercontent.com/Cesar-Melchor/Flutter-mis-Imagenes/main/Yo.jpg'),
        ),
        Material(elevation: 10, borderRadius: BorderRadius.circular(5), child: Container(width: 250.0, height: 80.0, decoration: BoxDecoration(border: Border.all(width: 3.0, color: Colors.red.shade900)), child: const Center(child: Text('6to J"A" Programacion'))))
      ]),
    );
  }
}
