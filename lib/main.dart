import 'dart:async';

import 'package:bettereats_mobile/core/config/dart_define_config.dart';
import 'package:bettereats_mobile/core/routes/app_pages.dart';
import 'package:bettereats_mobile/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void initializeChannelConfig() {
  WidgetsFlutterBinding.ensureInitialized();
  // ChannelConfig.initialize(); //todo: Cari tau
}

void main() async {
  runZonedGuarded<Future<void>>(
        () async {
      WidgetsFlutterBinding.ensureInitialized();

      // when run using demo app
      // if (DartDefineConfig.hasConfig) {
      //   AppConfigDemo.initialize(DartDefineConfig.environment);
      // }
      // todo: cari tau ini apa

      // Set status bar icon color to light (white icons)
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light, // For Android
          statusBarBrightness: Brightness.light, // For iOS
          statusBarColor: Colors.blue,
        ),
      );

      // Initialize Flutter Data Domain
      // FlutterDataDependenciesInjection.inject();
      // FlutterDomainDependenciesInjection.inject();
      //todo: cari tau. harusnya ini untuk akses data domain

      // Initialize Flavor config
      // await Flavor.initialize(
      //   AppConfig.instance.environment.isNotEmpty
      //       ? AppConfig.instance.environment
      //       : DartDefineConfig.environment,
      //   AppConfig.instance.appVersion,
      // );
      //todo: cari tau. harusnya ini untuk initialize by flavor

      // Initialze Chukker Interceptor
      // final dioRequestInspector = DioRequestInspector(
      //   isDebugMode: true,
      //   showFloating: false,
      // );
      // setRequestInspector(requestInspector: dioRequestInspector);
      //
      // final appWithInspector = DioRequestInspectorMain(inspector: dioRequestInspector, child: const MyApp());
      //
      // // Initialize Localization
      // final localizationApp = await Localization.init(
      //   appWithInspector,
      //   AppConfig.instance.environment.isNotEmpty ? AppConfig.instance.environment : DartDefineConfig.environment,
      // );
      //todo: harusnya iini untuk initialize chukker

      // Run App
      // runApp(localizationApp);
    },
        (error, stack) {},
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // localizationsDelegates: context.localizationDelegates,
          // supportedLocales: context.supportedLocales,
          // locale: context.locale,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: false,
          ),
          getPages: AppPages.routes,
          initialRoute: DartDefineConfig.hasConfig ? AppRoutes.HOME_SCREEN : AppPages.initial,
          // navigatorObservers: [
          //   DioRequestInspector.navigatorObserver,
          // ],
          // builder: (context, child) => FPSecureApplication(
          //   nativeRemoveDelay: 800,
          //   child: FPSecureGate(
          //     child: Builder(
          //       builder: (context) {
          //         return child!;
          //       },
          //     ),
          //   ),
          // ),
        );
  }
}
