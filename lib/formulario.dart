import 'package:flutter/material.dart';


class Formmulario extends StatelessWidget {
  
  final int alcance;  
  final String texto;
  final bool permissaoEnviar;
  final void Function() funcEnviar;  

  Formmulario({
    @required this.texto, 
    @required this.alcance, 
    @required this.permissaoEnviar, 
    @required this.funcEnviar  
  });  
  
 @override
  Widget build(BuildContext context) {    

    return  Column(
          children: <Widget>[            
            Text(
              'Alcance da mensagem',
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            Slider(value: 1 , onChanged : (double newValue) {return 3;}, min: 0.0,max:8.0),
            TextField(
              decoration: InputDecoration(                
                hintText: 'Mensagem'
              ),
            ),

            
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Enviar mensagem"),
              onPressed: this.funcEnviar,                
            ),
          ],
        );
  }

}