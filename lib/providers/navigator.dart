import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';

final navigatorKeyProvider = Provider((_) => GlobalKey<NavigatorState>());

extension NavigatorStateExtension on NavigatorState {
  BuildContext get descendantContext => overlay.context;
}
