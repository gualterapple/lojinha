import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha/modelos/item_carrinho.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/texto_detalhes.dart';

import '../main.dart';

class CardDetalhes extends StatelessWidget {

  //final formatKwanzas = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  final Movel movel;
  final Function atualizaPagina;

  CardDetalhes({required this.movel, required this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(
            texto: movel.titulo.toString(), estilo: Theme.of(context).textTheme.headline1),
          TextoDetalhes(
            texto: movel.descricao.toString()),
            Container(
              margin: EdgeInsets.only(
                left: 16, right: 16, top: 16, bottom: 8
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('${movel.preco}', style: Theme.of(context).textTheme.headline1),
                  FlatButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      _verificarItemCarrinho(Inicio.itensCarrinho, ItemCarrinho(movel: movel, quantidade: 1));
                    }, 
                    child: Text('Comprar', style: TextStyle(
                      color: Colors.white
                    ),))
                ],
              ),
            )
        ],
      ),
    );
  }

  void _adicionarItemCarrinho(item){
    Inicio.itensCarrinho.add(item);
    atualizaPagina();
  }

   void _verificarItemCarrinho(List<ItemCarrinho> listaItems, ItemCarrinho item){
    int indiceMovel = listaItems.indexWhere((item) => item.movel == movel);
    if(indiceMovel >= 0){
      listaItems[indiceMovel].quantidade = listaItems[indiceMovel].quantidade!.toInt() + 1;
    }
    else
    _adicionarItemCarrinho(item);

  }

}