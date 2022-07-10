import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

/* Bloc Observer */
import 'package:tabs_prueba_flutter_bloc/blocs/bloc_observer/simple_bloc_observer.dart';

/* Screens */
import 'package:tabs_prueba_flutter_bloc/screens/screens.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
