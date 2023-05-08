import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v2/layout/default_layout.dart';
import 'package:flutter_riverpod_v2/riverpod/provider.dart';
import 'package:flutter_riverpod_v2/riverpod/state_notifier_provider.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filteredShoppingListProvider);

    return DefaultLayout(
      title: 'ProviderScreen',
      actions: [
        PopupMenuButton<FilterState>(
          itemBuilder: (context) {
            return FilterState.values
                .map(
                  (value) => PopupMenuItem(
                    value: value,
                    child: Text(value.name),
                  ),
                )
                .toList();
          },
          onSelected: (value) {
            ref.read(filterProvider.notifier).update((state) => value);
          },
        ),
      ],
      body: ListView(
        children: state
            .map(
              (item) => CheckboxListTile(
                title: Text(item.name),
                value: item.hasBought,
                onChanged: (value) {
                  ref
                      .read(shoppingListProvider.notifier)
                      .toggleHasBought(name: item.name);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
