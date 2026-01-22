import 'package:flutter/material.dart';

class InteracaoWidget extends StatefulWidget {
  const InteracaoWidget({super.key});

  @override
  State<InteracaoWidget> createState() => _InteracaoWidgetState();
}

class _InteracaoWidgetState extends State<InteracaoWidget> {
  String texto = 'Digite algo';
  final TextEditingController _controller = TextEditingController();

  void _alterarTexto() {
    setState(() {
      texto = _controller.text;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                texto,
                key: const Key('texto_widget'),
              ),
              const SizedBox(height: 16),
              TextField(
                key: const Key('campo_texto'),
                controller: _controller,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                key: const Key('botao_alterar'),
                onPressed: _alterarTexto,
                child: const Text('Alterar Texto'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
