import 'package:coffee_shop/data/models/coffee_model.dart';

class TestSeed {
  static List<CoffeeModel> generateCoffeeModels() {
    return [
      CoffeeModel(
        id: 1,
        title: 'Espresso',
        description: 'Strong and full-flavored coffee.',
        category: 'Espresso',
        price: 2.5,
        imageUrl: 'lib/core/assets/images/img_coffee_1.png',
      ),
      CoffeeModel(
        id: 2,
        title: 'Latte',
        description: 'Espresso with steamed milk.',
        category: 'Espresso',
        price: 3.0,
        imageUrl: 'lib/core/assets/images/img_coffee_2.png',
      ),
      CoffeeModel(
        id: 3,
        title: 'Cappuccino',
        description: 'Espresso with milk foam.',
        category: 'Espresso',
        price: 3.5,
        imageUrl: 'lib/core/assets/images/img_coffee_3.png',
      ),
      CoffeeModel(
        id: 4,
        title: 'Americano',
        description: 'Espresso with hot water.',
        category: 'Espresso',
        price: 2.0,
        imageUrl: 'lib/core/assets/images/img_coffee_4.png',
      ),
      CoffeeModel(
        id: 5,
        title: 'Mocha',
        description: 'Chocolate-flavored latte.',
        category: 'Espresso',
        price: 3.5,
        imageUrl: 'lib/core/assets/images/img_coffee_5.png',
      ),
      CoffeeModel(
        id: 6,
        title: 'Macchiato',
        description: 'Espresso with foamed milk.',
        category: 'Espresso',
        price: 3.0,
        imageUrl: 'lib/core/assets/images/img_coffee_1.png',
      ),
      CoffeeModel(
        id: 7,
        title: 'Flat White',
        description: 'Espresso with microfoam.',
        category: 'Espresso',
        price: 3.0,
        imageUrl: 'lib/core/assets/images/img_coffee_2.png',
      ),
      CoffeeModel(
        id: 8,
        title: 'Affogato',
        description: 'Espresso over ice cream.',
        category: 'Espresso',
        price: 4.0,
        imageUrl: 'lib/core/assets/images/img_coffee_3.png',
      ),
      CoffeeModel(
        id: 9,
        title: 'Irish Coffee',
        description: 'Coffee with whiskey and cream.',
        category: 'Specialty',
        price: 5.0,
        imageUrl: 'lib/core/assets/images/img_coffee_4.png',
      ),
      CoffeeModel(
        id: 10,
        title: 'Turkish Coffee',
        description: 'Finely ground coffee.',
        category: 'Traditional',
        price: 2.5,
        imageUrl: 'lib/core/assets/images/img_coffee_5.png',
      ),
    ];
  }
}
