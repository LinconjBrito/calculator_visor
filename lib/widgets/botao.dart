import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final Function(String) onclick;
  final String valorDoBotao;
  final Color corDoBotao;
  const Botao(this.onclick, {super.key, required this.valorDoBotao, this.corDoBotao = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        
        height: 90,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: TextButton(
            
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 30),
              backgroundColor: const Color.fromARGB(255, 63, 63, 63),
              foregroundColor: corDoBotao,
              
              ),

            onPressed: () {
              onclick(valorDoBotao);
            },
            child: Text(valorDoBotao),
          ),
        ),
      ),
    );
  }
}
