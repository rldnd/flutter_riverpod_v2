class ShoppingItemModel {
  /// 이름
  final String name;

  /// 개수
  final int quantity;

  /// 구매했는지
  final bool hasBought;

  /// 매운지
  final bool isSpicy;

  const ShoppingItemModel({
    required this.hasBought,
    required this.isSpicy,
    required this.name,
    required this.quantity,
  });
}
