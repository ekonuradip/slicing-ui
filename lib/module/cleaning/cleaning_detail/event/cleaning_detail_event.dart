
abstract class CleaningDetailEvent {}
class CleaningDetailIncrementEvent extends CleaningDetailEvent {}

class CleaningDetailUpdateIndexEvent
    extends CleaningDetailEvent {
  final int selectedIndex;
  CleaningDetailUpdateIndexEvent({required this.selectedIndex});
}