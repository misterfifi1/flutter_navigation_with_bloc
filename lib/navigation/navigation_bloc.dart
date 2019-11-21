import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_navigation_with_bloc/fragment/apps_fragment_widget.dart';
import 'package:flutter_navigation_with_bloc/fragment/settings_fragment_widget.dart';
import 'package:flutter_navigation_with_bloc/fragment/users_fragment_widget.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  @override
  NavigationState get initialState => InitialNavigationState();

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    if (event is ChangeFragmentEvent) {
      yield NewFragmentState(event.index, _determineFragment(event.index));
    }
  }

  Widget _determineFragment(int index){
    switch(index){
      case 0:
        return AppsFragmentWidget();
        break;
      case 2:
        return SettingsFragmentWidget();
        break;
      case 1:
      default:
        return UsersFragmentWidget();
        break;
    }
  }
}
