import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/providers/providers.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: ref.watch(titleProvider),
      routeInformationParser: ref.watch(routerProvider).routeInformationParser,
      routerDelegate: ref.watch(routerProvider).routerDelegate,
      // theme: lightTheme,
      // darkTheme: darkTheme,
      // themeMode: ref.watch(themeProvider),
      // navigatorKey: ref.watch(navigatorKeyProvider),
      // onGenerateRoute: ref.watch(routerProvider).onGenerateRoute,
      // home: Router(
      //   routerDelegate: ref.watch(routerProvider),
      // ),
    );
  }
}
