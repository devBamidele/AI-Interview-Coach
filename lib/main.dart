import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';
import 'core/config/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔍 Check environment on startup
  if (kDebugMode) {
    debugPrint('═══════════════════════════════════════');
    debugPrint('🚀 Environment: ${AppConfig.environmentName}');
    debugPrint('🌐 Backend: ${AppConfig.backendUrl}');
    debugPrint('═══════════════════════════════════════');
  }

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.read(appRouterProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        title: 'Rehearse',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
