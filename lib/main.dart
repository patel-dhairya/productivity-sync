import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:productivity_sync/2_application/core/router_config.dart';
import 'package:productivity_sync/core/theme/color_schemes.dart';

void main() {
  // runApp - top level widget for app
  runApp(const MyProducivityApp());
}

class MyProducivityApp extends StatelessWidget {
  const MyProducivityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Productivity Sync',
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: AppTheme.miniTheme,
      routerConfig: routes,
    );
  }
}
