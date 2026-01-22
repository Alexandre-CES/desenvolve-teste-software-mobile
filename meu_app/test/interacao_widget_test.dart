import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meu_app/interacao_widget.dart';

void main() {
  testWidgets('Verifica se o texto muda após digitação e clique',
      (WidgetTester tester) async {
    await tester.pumpWidget(const InteracaoWidget());

    // Verifica o texto inicial
    expect(find.text('Digite algo'), findsOneWidget);
    expect(find.text('Texto atualizado!'), findsNothing);

    // Insere um novo texto no campo de texto
    await tester.enterText(
      find.byKey(const Key('campo_texto')),
      'Texto atualizado!',
    );

    // Simula um clique no botão
    await tester.tap(find.byKey(const Key('botao_alterar')));
    await tester.pump();

    // Verifica se o texto foi alterado corretamente
    expect(find.text('Texto atualizado!'), findsOneWidget);
  });
}
