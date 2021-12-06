import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tab_bloc/blocs/bloc/bottom_navigation_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bottomNavigationBloc = context.read<BottomNavigationBloc>();


    return BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, currentTabIndex ) {

        return BottomNavigationBar(
          elevation: 0,
          currentIndex: currentTabIndex,
          onTap: ( index ) => bottomNavigationBloc.add( TabChangeEvent(index) ),
          items: const [
            BottomNavigationBarItem( icon: Icon(Icons.access_alarm_rounded), label: 'Alarma'),
            BottomNavigationBarItem( icon: Icon(Icons.supervised_user_circle_outlined), label: 'Usuario'),
          ],
        );
      },
    );
  }
}
