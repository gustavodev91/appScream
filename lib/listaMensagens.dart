import 'package:flutter/material.dart';
import 'cardMessage.dart';

class ListaMensagens extends StatelessWidget {

  final List<Map<String,String>> _listaMensagens;  


  ListaMensagens(this._listaMensagens);

   @override
  Widget build(BuildContext context) {

    return  Column(
        children: <Widget>[
          ..._listaMensagens.map((menssagem) {
            return CardMenssagem(user : menssagem['user'], menssagem: menssagem['texto']);
          })
        ]);
    
    
    // Column(
    //       children: <Widget>[            
    //         Questao(perguntas[perguntaSelecionada]['texto']),
    //         ...respostas.map((resp) {
    //           return Resposta(resp['texto'], () => responder(resp['pontuacao']));
    //         }).toList()
    //       ],
    //     );
  }
}