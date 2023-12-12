abstract class CleaningMainNavigationEvent {}

class CleaningMainNavigationIncrementEvent
    extends CleaningMainNavigationEvent {}

class CleaningMainNavigationUpdateIndexEvent
    extends CleaningMainNavigationEvent {
  final int selectedIndex;
  CleaningMainNavigationUpdateIndexEvent({required this.selectedIndex});
}
