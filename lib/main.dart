import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:tab_bloc/blocs/simple_bloc_observer.dart';
import 'package:tab_bloc/screens/home_screen.dart';

void main() {

  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: SimpleBlocOBserver()
  );
  // runApp(const MyApp())
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen()
    );
  }
}