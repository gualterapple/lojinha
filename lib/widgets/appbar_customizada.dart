import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:lojinha/widgets/botao_carrinho.dart';


class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget{

  final String titulo;
  final bool ehPaginaCarrinho;

  AppBarCustomizada({required this.titulo, required this.ehPaginaCarrinho});
  
  @override
  Widget build(BuildContext context) {
      return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(titulo, style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        actions: <Widget>[
          _mudarPaginaCarrinho(ehPaginaCarrinho)
        ]
      );

  }

  _mudarPaginaCarrinho(bool ehPaginaCarrinho){
    if(ehPaginaCarrinho) return Container();
    return BotaoCarrinho();
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
 }