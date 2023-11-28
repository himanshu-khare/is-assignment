import 'package:flutter/material.dart';
import 'package:is_assignment/l10n/l10n.dart';
import 'package:is_assignment/leads/view/leads_page.dart';
import 'package:is_assignment/theme/theme_helper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const LeadsPage(),
    );
  }
}
