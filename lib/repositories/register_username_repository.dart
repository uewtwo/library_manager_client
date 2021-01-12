import 'package:state_notifier/state_notifier.dart';

class RegisterUsernameRepository extends StateNotifier<String> {
  RegisterUsernameRepository() : super('');

  void exportResult(registerResult) => state = registerResult;
}
