import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:librarymanagerclient/ui/app.dart';

void main() {
  runApp(
    const ProviderScope(child: LibraryManagerApp()),
  );
}
