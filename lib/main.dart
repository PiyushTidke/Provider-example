import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/app_state.dart';
import 'home_state.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Appstate(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeState(),
      ),
    );
  }
}
