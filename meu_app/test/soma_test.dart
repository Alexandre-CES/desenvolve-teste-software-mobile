import 'package:flutter_test/flutter_test.dart';

int soma(int a, int b) => a + b;

void main(){
  test('Soma de dois números', (){
    expect(soma(2,3), equals(5));
  });
}