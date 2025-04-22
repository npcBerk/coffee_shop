import 'package:flutter_test/flutter_test.dart';

int topla(int a, int b) => a + b;

void main() {
  test('Toplama fonksiyonu doğru sonucu veriyor', () {
    expect(topla(3, 5), 8);
    expect(topla(-2, 2), 0);
    expect(topla(0, 0), 0);
  });
}
