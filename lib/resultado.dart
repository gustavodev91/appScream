import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final Function reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if(pontuacao < 4){
      return 'Parabéns';
    }else if(pontuacao < 9){
      return 'Quase lá';
    }else {
      return 'Tente de novo!!';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ) 
        ),
        FlatButton(
          child: Text(
            'Reiniciar', 
            style: TextStyle(fontSize: 18)), 
          textColor: Colors.blue,
          onPressed: reiniciarQuestionario
          )
      ],
    );
  }
}