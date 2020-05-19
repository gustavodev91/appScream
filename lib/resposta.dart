import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPress;
  Resposta(this.texto, this.onPress);
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.texto),
        onPressed: this.onPress,                
      ),
    );    
  }
}