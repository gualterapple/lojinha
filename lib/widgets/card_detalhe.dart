import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {

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
            texto: movel.descricao.toString())
        ],
      ),
    );
  }
}