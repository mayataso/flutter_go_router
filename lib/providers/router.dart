import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_sample/pages/first.dart';
import 'package:riverpod_sample/pages/second.dart';
import 'package:riverpod_sample/pages/top.dart';
import 'package:riverpod_sample/utils/logger.dart';

final routerProvider = ChangeNotifierProvider(
  (ref) => GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const TopPage(),
      ),
      GoRoute(
        path: '/first',
        builder: (context, state) => const FirstPage(),
      ),
      GoRoute(
        path: '/second',
        builder: (context, state) => const SecondPage(),
      ),
    ],
    redirect: (state) {
      logger.info('router: redirect');
      // リダイレクト処理 (未ログイン時、強制的にログイン画面に遷移等)
    },
    // 監視するProvider
    // refreshListenable: ref.watch(loginProvider),
    // エラー時に遷移するページについて定義
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  ),
);
