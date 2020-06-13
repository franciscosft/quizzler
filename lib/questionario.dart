import 'package:quizzler/pergunta.dart';

class Questionario {
  int _perguntaAtual = 0;

  List<Pergunta> _perguntas = [
    Pergunta(p: 'Pergunta 1', r: false),
    Pergunta(p: 'Pergunta 2', r: true),
    Pergunta(p: 'Pergunta 3', r: true),
    Pergunta(p: 'Pergunta 5', r: true),
  ];

  Questionario();

  List<Pergunta> getPerguntas() {
    return _perguntas;
  }

  String getPergunta() {
    return _perguntas[_perguntaAtual].pergunta;
  }

  bool getResposta() {
    return _perguntas[_perguntaAtual].resposta;
  }

  void proximaPergunta() {
    if (_perguntaAtual < _perguntas.length - 1) {
      _perguntaAtual++;
    }
  }

  bool isTerminou() {
    print(_perguntaAtual);
    print(_perguntas.length - 1);
    return _perguntaAtual >= _perguntas.length - 1;
  }

  void resetar() {
    _perguntaAtual = 0;
  }
}
