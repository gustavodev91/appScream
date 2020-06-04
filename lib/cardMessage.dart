import 'package:flutter/material.dart';

class CardMenssagem extends StatelessWidget {
  
  final String user;
  final String menssagem;

  CardMenssagem({
    @required this.user,
    @required this.menssagem
    });

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text("this.user"),
              subtitle: Text("this.menssagem"),
            ),

            ButtonBar(
              children: <Widget>[                
                FlatButton(
                  child: const Text('Bloquear'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}