import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {

  //final formatKwanzas = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  final Movel movel;

  CardDetalhes({required this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextoDetalhes(
            texto: movel.titulo.toString()),
          TextoDetalhes(
            texto: movel.descricao.toString()),
            Row(
              children: <Widget>[
                Text('${movel.preco}'),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {}, 
                  child: Text('Comprar'))
              ],
            )
        ],
      ),
    );
  }
}