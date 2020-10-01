import 'package:hooks_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final pickDateProvider = StateNotifierProvider((_) => PickDateProvider());

class PickDateProvider extends StateNotifier<DateTime> {
  PickDateProvider() : super(DateTime.now());
  void exportResult(pickResult) => state = pickResult;
}
