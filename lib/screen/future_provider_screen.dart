import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v2/layout/default_layout.dart';
import 'package:flutter_riverpod_v2/riverpod/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multiplesProvider);

    return DefaultLayout(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          state.when(
            data: (data) {
              return Text(
                data.toString(),
                textAlign: TextAlign.center,
              );
            },
            error: (err, stackTrace) => Text(err.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
      title: 'FutureProviderScreen',
    );
  }
}
