import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Ana sayfa başlığı test edilir', (WidgetTester tester) async {
    // Test edilecek basit bir widget
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Center(child: Text('Merhaba Flutter'))),
      ),
    );

    // Ekranda beklenen text var mı?
    expect(find.text('Merhaba Flutter'), findsOneWidget);
  });
}
