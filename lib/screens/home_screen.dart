import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_bloc/blocs/bloc/bottom_navigation_bloc.dart';

import 'package:tab_bloc/views/home_view.dart';

class HomeScreen extends StatelessWidget {
   
   const HomeScreen({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
    return BlocProvider(
      create: ( _ ) => BottomNavigationBloc(),
      child: const HomeView(),
    );
   }
}
