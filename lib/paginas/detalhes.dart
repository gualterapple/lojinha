import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/appbar_customizada.dart';

class Detalhes extends StatelessWidget  {

  final Movel movel;

  Detalhes({required this.movel});
    
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'utilidades/assets/imagens/${movel.foto}'),
            fit: BoxFit.cover
            )
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(titulo: '',ehPaginaCarrinho: false),
        body: TextButton(
          onPressed: ()
          {
            Navigator.pushNamed(context, '/carrinho');
          },
          child: Text('Agora para a página carrinho'),
          ),
      ),
    );
  }
}