import 'package:flutter/material.dart';
import 'package:calculator/widgets/botao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String textoVisor = "Visor";

  void atualizarTexto(String novoTexto) {
    setState(() {
      textoVisor = "Clicou em: $novoTexto";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Calculadora"),
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            color: Colors.white,
            width: 400,
            height: 120,
            child: Center(
                child: Text(
              textoVisor,
              style: const TextStyle(fontSize: 50),
            )),
          ),
          Row(
            children: [
              Botao(atualizarTexto, valorDoBotao: "C", corDoBotao: Colors.blue),
              Botao(atualizarTexto, valorDoBotao: "DEL", corDoBotao: Colors.blue),
              Botao(atualizarTexto, valorDoBotao: "%", corDoBotao: Colors.blue),
              Botao(atualizarTexto, valorDoBotao: "/", corDoBotao: Colors.blue),
            ],
          ),
           Row(
            children: [
              Botao(atualizarTexto, valorDoBotao: "7"),
              Botao(atualizarTexto, valorDoBotao: "8"),
              Botao(atualizarTexto, valorDoBotao: "9"),
              Botao(atualizarTexto, valorDoBotao: "x", corDoBotao: Colors.blue),
            ],
          ),
           Row(
            children: [
              Botao(atualizarTexto, valorDoBotao: "4"),
              Botao(atualizarTexto, valorDoBotao: "5"),
              Botao(atualizarTexto, valorDoBotao: "6"),
              Botao(atualizarTexto, valorDoBotao: "+", corDoBotao: Colors.blue),
            ],
          ),
           Row(
            children: [
              Botao(atualizarTexto, valorDoBotao: "1"),
              Botao(atualizarTexto, valorDoBotao: "2"),
              Botao(atualizarTexto, valorDoBotao: "3"),
              Botao(atualizarTexto, valorDoBotao: "-", corDoBotao: Colors.blue),
            ],
          ),
          Row(
            children: [
              Botao(atualizarTexto, valorDoBotao: "0"),
              Botao(atualizarTexto, valorDoBotao: "."),
              Botao(atualizarTexto, valorDoBotao: "=", corDoBotao: Colors.blue),
            
            ],
          ),
         
        ]),
      ),
    );
  }
}







//TODO - 4: Crie um novo Container, que receberá um column, que por sua vez receberá vários rows, que por sua vez receberão vários raisedbuttons para criar os botões da nossa calculadora. A calculadora deve ficar com o visual similar ao da imagem apresentada em: https://drive.google.com/file/d/1fuKl3cdlr1J-PsLLmKtStvgeHiaeahO6/view?usp=sharing. Dicas: pesquisem no flutter.dev pelas classes/widgets: 'Expanded' e 'RaisedButton'; As cores podem ser diferentes para os botões, fica a seu critério, porém, a estrutura dos botões deve ser a mesma apresentada na imagem.