import 'package:coffee_shop/data/models/category_model.dart';
import 'package:coffee_shop/data/models/coffee_model.dart';

class TestSeed {
  static List<CoffeeModel> generateCoffeeModels() {
    return [
      CoffeeModel(
        id: 1,
        title: 'Espresso',
        description: 'Strong and full-flavored coffee.',
        category: CategoryModel(id: 1, title: 'Espresso'),
        price: 2.5,
        imageUrl: 'lib/core/assets/images/img_coffee_1.png',
        rating: 4.5,
      ),
      CoffeeModel(
        id: 2,
        title: 'Latte',
        description: 'Espresso with steamed milk.',
        category: CategoryModel(id: 2, title: 'Latte'),
        price: 3.0,
        imageUrl: 'lib/core/assets/images/img_coffee_2.png',
        rating: 4.0,
      ),
      CoffeeModel(
        id: 3,
        title: 'Cappuccino',
        description: 'Espresso with milk foam.',
        category: CategoryModel(id: 3, title: 'Cappuccino'),
        price: 3.5,
        imageUrl: 'lib/core/assets/images/img_coffee_3.png',
        rating: 4.2,
      ),
      CoffeeModel(
        id: 4,
        title: 'Americano',
        description: 'Espresso with hot water.',
        category: CategoryModel(id: 4, title: 'Mocha'),
        price: 2.0,
        imageUrl: 'lib/core/assets/images/img_coffee_4.png',
        rating: 3.8,
      ),
      CoffeeModel(
        id: 5,
        title: 'Mocha',
        description: 'Chocolate-flavored latte.',
        category: CategoryModel(id: 5, title: 'Espresso'),
        price: 3.5,
        imageUrl: 'lib/core/assets/images/img_coffee_5.png',
        rating: 4.3,
      ),
      CoffeeModel(
        id: 6,
        title: 'Macchiato',
        description: 'Espresso with foamed milk.',
        category: CategoryModel(id: 6, title: 'Espresso'),
        price: 3.0,
        imageUrl: 'lib/core/assets/images/img_coffee_1.png',
        rating: 4.1,
      ),
      CoffeeModel(
        id: 7,
        title: 'Flat White',
        description: 'Espresso with microfoam.',
        category: CategoryModel(id: 7, title: 'Espresso'),
        price: 3.0,
        imageUrl: 'lib/core/assets/images/img_coffee_2.png',
        rating: 4.0,
      ),
      CoffeeModel(
        id: 8,
        title: 'Affogato',
        description: 'Espresso over ice cream.',
        category: CategoryModel(id: 8, title: 'Espresso'),
        price: 4.0,
        imageUrl: 'lib/core/assets/images/img_coffee_3.png',
        rating: 4.7,
      ),
      CoffeeModel(
        id: 9,
        title: 'Irish Coffee',
        description: 'Coffee with whiskey and cream.',
        category: CategoryModel(id: 9, title: 'Specialty'),
        price: 5.0,
        imageUrl: 'lib/core/assets/images/img_coffee_4.png',
        rating: 4.6,
      ),
      CoffeeModel(
        id: 10,
        title: 'Turkish Coffee',
        description: 'Finely ground coffee.',
        category: CategoryModel(id: 10, title: 'Traditional'),
        price: 2.5,
        imageUrl: 'lib/core/assets/images/img_coffee_5.png',
        rating: 4.4,
      ),
    ];
  }
}
