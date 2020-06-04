import 'package:flutter/material.dart';


class Formmulario extends StatelessWidget {
  
  final double alcance;  
  final String texto;
  final bool permissaoEnviar;
  final void Function(String,double) funcEnviar;    
  final void Function(double) alteraAlcance;
  final void Function(String) atualizaText;
  

  Formmulario({
    @required this.texto, 
    @required this.alcance, 
    @required this.permissaoEnviar, 
    @required this.funcEnviar,  
    @required this.alteraAlcance,
    @required this.atualizaText,
    
    
  });  

  
 @override
  Widget build(BuildContext context) {    

    return  Column(
          children: <Widget>[            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Alcance da mensagem',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
                
              ),
            ),
            Slider(
              value: alcance , 
              onChanged : (newVal) => alteraAlcance(newVal) , 
              min: 0.0,max:8.0,
              label: '$alcance'
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(                
                  hintText: 'Mensagem'
                ),
                onChanged : (String newValue) => atualizaText(newValue),   
                validator : (value) { if (value.isEmpty) {
                                          print('Please enter some text');
                                      }
                                      return null;
                                    }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(              
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Enviar mensagem"),            
                  onPressed: () => funcEnviar(texto,alcance),
                  
                ),
              ),
            ),
          ],
        );
  }

}