import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tema Claro / Oscuro'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        ///////////Copiar desde aquí////////////////////
        actions: <Widget>[
          GetBuilder<ThemeController>(
              init: ThemeController(),
              builder: (_) => Obx(() => Switch(
                  activeColor: Colors.white30,
                  value: _.isThemeDark,
                  onChanged: (value) => _.changeTheme())))
        ],
        ////////////////Hasta aquí//////////////////////
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Probando el cambio de claro a oscuro:',
            ),
          ],
        ),
      ),
    );
  }
}
