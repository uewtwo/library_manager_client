import 'package:state_notifier/state_notifier.dart';

class NfcResultRepository extends StateNotifier<String> {
  NfcResultRepository() : super('');

  void exportResult(readResult) => state = readResult;
}
