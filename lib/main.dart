import 'package:flutter/material.dart';
import './formulario.dart';
import './resultado.dart';
import 'listaMensagens.dart';
void main() {
    runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _texto = '';
  double _alcance = 2.0;

  var a =  [
      {
        'user' : 'usuario 1',
        'menssagem' : 'texto'
      },
      {
        'user' : 'usuario 2',
        'menssagem' : 'texto'
      },
      {
        'user' : 'usuario 3',
        'menssagem' : 'texto'
      },        
    ];

  void _enviarForm(String texto, double valor){    
    setState(() {
      _texto = '';     
    });
    
    print('Enviar texto\nText: $texto\nValor: $valor');
  }

  void _atualizaText(String text){
    print("Digitou $text");
    _texto = text;

    print("Salvou $text");
  }

  void _alteraAlcance(double novoValor){
    setState(() {
      _alcance = novoValor;
    });
    print("Novo Valor: $novoValor");
  }

  bool get _podeEnviar{
    return true;
  }

  bool get carregando{
    return true;
  }

  @override
  Widget build(BuildContext context){  

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mensagem'),
        ),
        body: !carregando ? 
        Formmulario(
          texto : _texto,
          alcance : _alcance,
          permissaoEnviar: _podeEnviar,
          funcEnviar : _enviarForm,
          alteraAlcance : _alteraAlcance,
          atualizaText : _atualizaText
          )
        :  ListaMensagens(a),
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
