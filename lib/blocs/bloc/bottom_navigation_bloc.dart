import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_event.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, int> {


  BottomNavigationBloc() : super(1) {

    on<TabChangeEvent>((event, emit) => emit( event.newIndex ) );

  }
}
