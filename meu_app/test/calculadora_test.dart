import 'package:flutter_test/flutter_test.dart';
import 'package:meu_app/calculadora.dart';

void main() {
  late Calculadora calculadora;

  // Inicializa a calculadora antes de cada teste
  setUp(() {
    calculadora = Calculadora();
  });

  group('Testes da Calculadora', () {
    test('Soma dois números corretamente', () {
      expect(calculadora.somar(4, 6), equals(10));
    });

    test('Subtrai dois números corretamente', () {
      expect(calculadora.subtrair(10, 3), equals(7));
    });

    test('Multiplica dois números corretamente', () {
      expect(calculadora.multiplicar(3, 3), equals(9));
    });

    test('Divisão válida', () {
      expect(calculadora.dividir(9, 3), equals(3));
    });

    test('Divisão por zero deve gerar erro', () {
      expect(() => calculadora.dividir(10, 0), throwsArgumentError);
    });
  });
}
