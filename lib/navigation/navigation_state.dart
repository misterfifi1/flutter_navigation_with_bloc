part of 'navigation_bloc.dart';

@immutable
abstract class NavigationState {
  NavigationState([List props = const []]) : super();
}

class InitialNavigationState extends NavigationState {}

class NewFragmentState extends NavigationState {
  final int index;
  final Widget newFragment;

  NewFragmentState(this.index, this.newFragment) : super([index, newFragment]);
}