import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_sample/providers/router.dart';

class FirstPage extends ConsumerWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Counters'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('First Page'),
            const Gap(20),
            ElevatedButton(
              onPressed: () {
                ref.read(routerProvider).pop();
              },
              child: const Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
