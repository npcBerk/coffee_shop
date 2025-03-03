import 'package:coffee_shop/data/providers/category_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_shop/data/seeds/test_seed.dart';
import 'package:coffee_shop/data/models/coffee_model.dart';

class CoffeeNotifier extends StateNotifier<List<CoffeeModel>> {
  CoffeeNotifier(this.ref) : super([]) {
    loadMoreItems(); // Başlangıçta ilk veriyi yükle
  }

  final Ref ref;
  int _currentPage = 0;
  final int _itemsPerPage = 6;
  bool _isFetching = false;
  bool _hasMoreItems = true;

  Future<void> loadMoreItems() async {
    if (_isFetching || !_hasMoreItems) return;
    _isFetching = true;

    await Future.delayed(
      const Duration(milliseconds: 500),
    ); // Simüle edilen gecikme

    final allCoffees = TestSeed.generateCoffeeModels();
    final selectedCategory = ref.read(categoryProvider); // Seçili kategoriyi al

    final filteredCoffees =
        allCoffees
            .where(
              (coffee) =>
                  coffee.category?.title == selectedCategory ||
                  selectedCategory == "All",
            )
            .toList();

    final newItems =
        filteredCoffees
            .skip(_currentPage * _itemsPerPage)
            .take(_itemsPerPage)
            .toList();

    if (newItems.isNotEmpty) {
      state = [...state, ...newItems];
      _currentPage++;
    } else {
      _hasMoreItems = false;
    }

    _isFetching = false;
  }

  void resetItems() {
    _currentPage = 0;
    _hasMoreItems = true;
    state = [];
    loadMoreItems(); // Yeni kategori için veriyi yeniden yükle
  }
}

final coffeeProvider = StateNotifierProvider<CoffeeNotifier, List<CoffeeModel>>(
  (ref) {
    return CoffeeNotifier(ref);
  },
);
