import 'package:flutter/cupertino.dart';

class ImagemElementoGridProdutos extends StatelessWidget {

  final String ?imagem;
  
  ImagemElementoGridProdutos({
    required this.imagem
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('utilidades/assets/imagens/$imagem')
      )
    );
  }
}