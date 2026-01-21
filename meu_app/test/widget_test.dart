import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meu_app/meu_widget.dart';

void main() {
  testWidgets('Verifica se o botão altera o texto', (WidgetTester tester) async {
    await tester.pumpWidget(const MeuWidget());

    // Verifica o texto inicial
    expect(find.text('Pressione o botão'), findsOneWidget);
    expect(find.text('Texto alterado!'), findsNothing);

    // Simula um clique no botão
    await tester.tap(find.byKey(const Key('botao_widget')));
    await tester.pump();

    // Verifica se o texto foi alterado
    expect(find.text('Texto alterado!'), findsOneWidget);
  });
}
