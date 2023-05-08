import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v2/model/shopping_item_model.dart';

final selectProvider =
    StateNotifierProvider<SelectNotifier, ShoppingItemModel>((ref) {
  return SelectNotifier();
});

class SelectNotifier extends StateNotifier<ShoppingItemModel> {
  SelectNotifier()
      : super(
          const ShoppingItemModel(
            hasBought: false,
            isSpicy: true,
            name: '김치',
            quantity: 3,
          ),
        );

  void toggleHasBought() {
    state = state.copyWith(hasBought: !state.hasBought);
  }

  void toggleIsSpicy() {
    state = state.copyWith(isSpicy: !state.isSpicy);
  }
}
