import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v2/model/shopping_item_model.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>((ref) {
  return ShoppingListNotifier();
});

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  // super constructor 호출 시 초기 값을 넣어 줌
  ShoppingListNotifier()
      : super(
          const [
            ShoppingItemModel(
              hasBought: false,
              isSpicy: true,
              name: '김치',
              quantity: 3,
            ),
            ShoppingItemModel(
              hasBought: false,
              isSpicy: true,
              name: '라면',
              quantity: 5,
            ),
            ShoppingItemModel(
              hasBought: false,
              isSpicy: false,
              name: '삼겹살',
              quantity: 10,
            ),
            ShoppingItemModel(
              hasBought: false,
              isSpicy: false,
              name: '수박',
              quantity: 2,
            ),
            ShoppingItemModel(
              hasBought: false,
              isSpicy: false,
              name: '카스테라',
              quantity: 5,
            ),
          ],
        );

  void toggleHasBought({required String name}) {
    state = state
        .map((e) => e.name == name
            ? ShoppingItemModel(
                hasBought: !e.hasBought,
                isSpicy: e.isSpicy,
                name: e.name,
                quantity: e.quantity,
              )
            : e)
        .toList();
  }
}
