import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';
void main() {
    runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;


  final List<Map<String,Object>> _perguntas = [
      {
        'texto' : 'Qual a sua cor favorita?',
        'respostas' : 
        [
          {'texto': 'verde', 'pontuacao':1},
          {'texto': 'azul', 'pontuacao':2},
          {'texto': 'amarelo', 'pontuacao':3},
          {'texto': 'preto', 'pontuacao':4},
          {'texto': 'branco', 'pontuacao':5}
        ]
      },      
      {
        'texto' : 'Qual o seu animal favorito?',
        'respostas' : [
          {'texto': 'cachorro', 'pontuacao':1}, 
          {'texto':'gato' , 'pontuacao':2},
          {'texto': 'coelho' , 'pontuacao':3}
        ]
      },
      {
        'texto' : 'Qual o seu instrutor favorito',
        'respostas' : [
          {'texto':'maria', 'pontuacao':1},
          {'texto':'joao', 'pontuacao':2} ,
          {'texto':'leo', 'pontuacao': 3}
        ]
      }
    ];

  void _responder(int pontuacao){    
    setState(() {
      _perguntaSelecionada++;      
      _pontuacaoTotal += pontuacao;
    });    
    
  }

  void _reiniciarQuestionario(){
    setState(() {
    _perguntaSelecionada = 0;      
    _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context){  

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? 
        Questionario(
          perguntaSelecionada : _perguntaSelecionada,
          perguntas : _perguntas,
          responder : _responder)
        : Resultado(_pontuacaoTotal,_reiniciarQuestionario)
      )
    );
  }

}

class PerguntaApp extends StatefulWidget {

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
  
}
