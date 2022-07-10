import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Blocs */
import 'package:tabs_prueba_flutter_bloc/blocs/blocs.dart';

/* Views */
import 'package:tabs_prueba_flutter_bloc/views/views.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationBloc(),
      child: const HomeView(),
    );
  }
}
