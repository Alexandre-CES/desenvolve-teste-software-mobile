import 'package:flutter/material.dart';

class MeuWidget extends StatefulWidget {
  const MeuWidget({super.key});

  @override
  State<MeuWidget> createState() => _MeuWidgetState();
}

class _MeuWidgetState extends State<MeuWidget> {
  String texto = 'Pressione o botão';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(texto),
              const SizedBox(height: 16),
              ElevatedButton(
                key: const Key('botao_widget'),
                onPressed: () {
                  setState(() {
                    texto = 'Texto alterado!';
                  });
                },
                child: const Text('Alterar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
