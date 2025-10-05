import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'features/interview/presentation/pages/analysis_results_page.dart';
import 'features/interview/presentation/pages/home_page.dart';
import 'features/interview/presentation/pages/interview_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Interview',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'SF Pro Display',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/interview': (context) => const InterviewPage(),
        '/analysis': (context) => const AnalysisResultsPage(),
      },
      onGenerateRoute: (settings) {
        // Handle '/results' route (for viewing past interviews)
        if (settings.name == '/results') {
          // For now, navigate to analysis page
          // TODO: Create a list of past interviews page
          return MaterialPageRoute(
            builder: (context) => const AnalysisResultsPage(),
          );
        }
        return null;
      },
    );
  }
}
