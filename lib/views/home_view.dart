import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Blocs */
import 'package:tabs_prueba_flutter_bloc/blocs/blocs.dart';

/* Widgets */
import 'package:tabs_prueba_flutter_bloc/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<BottomNavigationBloc, int>(
          builder: (context, currentTabState) {
            return Text('HomeScreen: $currentTabState');
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBarWidget(),
    );
  }
}
