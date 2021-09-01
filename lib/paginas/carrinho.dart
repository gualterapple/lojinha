import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha/widgets/appbar_customizada.dart';

class Carrinho extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: 'Carrinho', ehPaginaCarrinho: true,
      ),
    );
  }
}