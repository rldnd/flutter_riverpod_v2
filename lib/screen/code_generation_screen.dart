import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v2/layout/default_layout.dart';
import 'package:flutter_riverpod_v2/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gStateNotifierProvider);

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(gStateNotifierProvider);
              return Row(
                children: [
                  Text(state.toString()),
                  if (child != null) child,
                ],
              );
            },
            child: const Text('hello'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(gStateNotifierProvider.notifier).increment();
            },
            child: const Text('INCREMENT'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(gStateNotifierProvider.notifier).decrement();
            },
            child: const Text('DECREMENT'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.invalidate(gStateNotifierProvider);
            },
            child: Text('Invalidate'),
          )
        ],
      ),
    );
  }
}
