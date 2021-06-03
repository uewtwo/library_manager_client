import 'package:state_notifier/state_notifier.dart';

class PickDateProvider extends StateNotifier<DateTime> {
  PickDateProvider() : super(DateTime.now());

  void exportResult(pickResult) => state = pickResult;
}
