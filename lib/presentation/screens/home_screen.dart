import 'package:coffee_shop/core/constants/colors.dart';
import 'package:coffee_shop/data/providers/category_provider.dart';
import 'package:coffee_shop/data/seeds/test_seed.dart';
import 'package:coffee_shop/presentation/widgets/coffee_item.dart';
import 'package:coffee_shop/presentation/widgets/home_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final coffees = TestSeed.generateCoffeeModels();

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight * 0.45,
              width: deviceWidth,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: HomeTop(
                      deviceWidth: deviceWidth,
                      deviceHeight: deviceHeight,
                    ),
                  ),
                  Positioned(
                    width: deviceWidth,
                    bottom: -40, //TODO: burası responsive olunca
                    right: 0,
                    child: BannerWidget(deviceWidth: deviceWidth),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    SizedBox(
                      //TODO: burada category_list widget'ı Sized box'ı kapsamalı mı?
                      height: 40,
                      child: CategoryList(),
                    ),
                    Expanded(
                      child: Consumer(
                        builder: (context, ref, child) {
                          final selectedCategory =
                              ref.watch(categoryProvider).selectedCategory;
                          final filteredCoffees =
                              coffees
                                  .where(
                                    (element) =>
                                        element.category == selectedCategory ||
                                        selectedCategory == "All",
                                  )
                                  .toList();

                          return GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  crossAxisSpacing: 30,
                                  mainAxisSpacing: 20,
                                  childAspectRatio: 4 / 7,
                                ),
                            itemCount: filteredCoffees.length,
                               /*  coffees
                                    .where(
                                      (element) =>
                                          element.category == "Espresso",
                                    )
                                    .length, */
                            itemBuilder: (context, index) {
                              return CoffeeItem(
                                coffee: filteredCoffees[index],
                               /*  coffee:
                                    coffees
                                        .where(
                                          (element) =>
                                              element.category == "Espresso",
                                        )
                                        .toList()[index], */
                              ); //TODO: Burada içeriye coffees verilebilir. Performans açısından düşünülebilir.
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class CategoryList extends ConsumerWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = [
      "All",
      "Espresso",
      "Latte",
      "Cappuccino",
      "Mocha",
      "Specialty",
      "Traditional",
    ];
    final selectedCategory = ref.watch(categoryProvider).selectedCategory;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        final isSelected = category == selectedCategory;

        return GestureDetector(
          onTap: () => ref.read(categoryProvider).selectCategory(category),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.color2 : AppColors.color1,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Text(
                    category,
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/* class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.color1,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                child: Text(
                  "Coffee",
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
} */
