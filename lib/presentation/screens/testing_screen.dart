//testing screen
//do not use this in production

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridExample()));
}

class GridExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adaptive GridView')),
      body: Column(
        children: [
          Container(child: Image.asset("lib/core/assets/images/img_coffee_5.png")),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200, // Maksimum genişlik
                      mainAxisSpacing: 10, // Dikey boşluk
                      crossAxisSpacing: 10, // Yatay boşluk
                      childAspectRatio: 1, // Oranı koru (kare)
                    ),
                    itemCount: 20, // Öğe sayısı (örnek amaçlı)
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            'Item $index',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
