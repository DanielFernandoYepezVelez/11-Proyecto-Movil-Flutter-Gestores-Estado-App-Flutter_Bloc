import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Blocs */
import 'package:tabs_prueba_flutter_bloc/blocs/blocs.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBlocBuilder = context.read<BottomNavigationBloc>();

    return BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, currentTabstate) {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: currentTabstate,
          onTap: (index) {
            print(index);
            bottomNavigationBlocBuilder.add(TabChangeEvent(index));
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined),
              label: 'Alarma',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: 'Usuario',
            )
          ],
        );
      },
    );
  }
}
