import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:plocka/states/global.dart';
import 'package:plocka/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Plocka());
}

class Plocka extends StatelessWidget {
  const Plocka({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.0,
        ),
        child: child!,
      ),
      home: const SplashScreen(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ko', 'KR')],
      initialBinding: BindingsBuilder(() {
        Get.put(GlobalState());
      }),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: ColorSystem.primary,
          primary: ColorSystem.primary,
        ),
        fontFamily: 'pretendard',
      ),
    );
  }
}
