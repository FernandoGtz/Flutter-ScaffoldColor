import 'package:flutter/material.dart';

void main() => runApp(new MiAppScaffold());

class MiAppScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Scaffold',
      home: new EstadoAppScaffold(),
    );
  }
}

class EstadoAppScaffold extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _EstadoAppScaffold();
}

class _EstadoAppScaffold extends State<EstadoAppScaffold>{
  dynamic color=Colors.blue;
  String texto='A ver presiona el boton';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Mi Scaffold'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(''),
            Container(
              alignment: Alignment.center,
              color: color,
              width: 300,
              height: 300,
              child: Text(texto,
                textScaleFactor: 3,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=> setState(() {
          color=Colors.deepPurple;
          texto='Has presionado el boton';
        }),
      ),
    );
  }
}
