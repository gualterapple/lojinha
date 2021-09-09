import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha/modelos/movel.dart';
import 'package:lojinha/widgets/appbar_customizada.dart';
import 'package:lojinha/widgets/card_detalhe.dart';

class Detalhes extends StatefulWidget  {

  _DetalhesState createState() => _DetalhesState();

  final Movel movel;
  Detalhes({required this.movel});

}

class _DetalhesState extends State<Detalhes>{

  void initState()
  {
    super.initState();
  }
    
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          
          image: AssetImage(
            'utilidades/assets/imagens/${widget.movel.foto}'),
            fit: BoxFit.cover
            )
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(titulo: '',ehPaginaCarrinho: false),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(20),
            height: 230,
            child: CardDetalhes(
              atualizaPagina: atualiza,
              movel:widget.movel)
            ),
        ),
      ),
    );
  }

  atualiza()
    {
    setState(() {
      
    });
  }

}