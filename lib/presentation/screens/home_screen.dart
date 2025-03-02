import 'package:coffee_shop/core/constants/colors.dart';
import 'package:coffee_shop/data/providers/providers.dart';
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
                      height: 50,
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
                                  childAspectRatio: 0.6,
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
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}

class BottomNavigationBarWidget extends ConsumerWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) => ref.read(selectedIndexProvider.notifier).state = index,
      selectedItemColor: AppColors.color1,
      unselectedItemColor: AppColors.color3,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        _navItem("lib/core/assets/icons/ico_home.png", selectedIndex == 0),
        _navItem("lib/core/assets/icons/ico_favorites.png", selectedIndex == 1),
        _navItem("lib/core/assets/icons/ico_bag.png", selectedIndex == 2),
        _navItem("lib/core/assets/icons/ico_notification.png", selectedIndex == 3),
      ],
    );
  }

  BottomNavigationBarItem _navItem(String iconPath, bool isSelected) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          ImageIcon(AssetImage(iconPath), size: 28),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 3),
              height: 4,
              width: 13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColors.color1,
              ),
            ),
        ],
      ),
      label: "",
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
