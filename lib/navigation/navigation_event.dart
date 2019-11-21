part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {
  NavigationEvent([List props = const []]) : super();
}

class ChangeFragmentEvent extends NavigationEvent{
  final int index;

  ChangeFragmentEvent(this. index) : super([index]);
}
