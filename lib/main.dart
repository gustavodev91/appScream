import 'package:flutter/material.dart';
import './formulario.dart';
import './resultado.dart';
void main() {
    runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _texto = '';
  var _alcance = 0;


  final List<Map<String,Object>> _perguntas = [
      {
        'texto' : 'Alcance',
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

  void _enviarForm(){    
    setState(() {
      _texto = '';
     _alcance = 0;
    });    
    
    print('Formulario Enviado');
  }

  bool get _podeEnviar{
    return true;
  }

  bool get carregando{
    return false;
  }

  @override
  Widget build(BuildContext context){  

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Enviar Mensagem'),
        ),
        body: !carregando ? 
        Formmulario(
          texto : _texto,
          alcance : _alcance,
          permissaoEnviar: _podeEnviar,
          funcEnviar : _enviarForm)
        : null
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
