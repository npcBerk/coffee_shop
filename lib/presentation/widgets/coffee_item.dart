import 'package:coffee_shop/core/constants/colors.dart';
import 'package:coffee_shop/data/seeds/test_seed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final coffeeModels = TestSeed.generateCoffeeModels();
    final coffee = coffeeModels[index];

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(coffee.imageUrl ?? '', fit: BoxFit.cover),
        ),
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffee.title ?? '',
                  style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //TODO: Description kısmında uzun bir description girili ise taşma oluyor, ya max length verilecek ya da esnek yapılacak. Fikrimce max lenght iyi gibi.
                Text(
                  coffee.description ?? '',
                  style: GoogleFonts.sora(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${coffee.price?.toStringAsFixed(2) ?? '0.00'}",
                  style: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.color1,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
















/* import 'package:coffee_shop/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CofffeeItem extends StatelessWidget {
  const CofffeeItem({
    super.key,
    required this.coffeeTypes,
    required this.index,
  });

  final List<String> coffeeTypes; //kalkacak
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "lib/core/assets/images/img_coffee_${index + 1}.png",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(coffeeTypes[index], style: GoogleFonts.sora(fontSize: 14)),
                Text("Description"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$4.99",
                  style: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.color1,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
 */