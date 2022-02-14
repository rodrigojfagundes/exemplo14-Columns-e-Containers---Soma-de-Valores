import 'dart:ffi';

import 'package:flutter/material.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatefulWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
//declarando uma variavel STRING "alterandoValorDoCOntainer" com valor OI
  double alterandoValorDoContainer = 10.0;
  //declarando uma variavel STRING variavel alterandoValorDoContainer2 com o valor OOOOOPPPAAAA
  double alterandoValorDoContainer2 = 15.0;
  //declarando uma variavel STRING alterandoValorDoContainer3 com o valor Gurizess
  double alterandoValorDoContainer3 = 20.0;
  double alterandoValorDoContainer4 = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //criando o esqueleto/scaffold do App
      home: Scaffold(
        //cor d efundo do app
        backgroundColor: Colors.yellow,
        //no corpo a SafeArea... ou seja todo APP fica em area visivel da tela
        body: SafeArea(
          //criando uma COLUMN pois assim podemos criar uma LISTA de CONTAINERS um em cima do outro
          child: Column(
            //criando o primeiro item da lista o Children GESTURE DETECTOR
            children: [
              //o GESTURE DETECTOR serve para verificar se foi apertado algum lugar da tela
              GestureDetector(
                //onTap significa que é só um toque simples na tela... (e nao 2 toques, etc...)
                onTap: () {
                  //ao ser pressionado chamaa funcao setState para permitir alterar o valor da variavel
                  setState(() {
                    //variavel alterandoValorDoContainer recebe um novo valor
                    alterandoValorDoContainer = 50.0;
                  });
                },
                //criando um filho q no caso é um container
                child: Container(
                  //passando as dimensoes do container, COR e o TEXTO + o conteudo da VARIAVEL
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: Text('Container 1 - $alterandoValorDoContainer'),
                ),
              ),
              //criando o SEGUNDO item da lista/vetor o Children GESTURE DETECTOR
              //o GESTURE DETECTOR serve para verificar se foi apertado algum lugar da tela
              GestureDetector(
                // OnTap caso a seja apertado UMA vez...
                onTap: () {
                  //funcao setState permite alterar o valor da variavel
                  setState(() {
                    //variavel alterandoValorDoContainer2 é alterado para Guri Bom
                    alterandoValorDoContainer2 = 100.0;
                  });
                },
                //criando um filho/child q no caso é um Container...
                child: Container(
                  //passando TAMANHO, COR e TEXTO + valor da VARIAVEL para o Container
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Text('eeeiiitaaa $alterandoValorDoContainer2'),
                ),
              ),
              //criando o SEGUNDO item da lista/vetor o Children GESTURE DETECTOR
              //o GESTURE DETECTOR serve para verificar se foi apertado algum lugar da tela
              GestureDetector(
                //funcao OnTap verifica se o local foi APERTADO UMA VEZ
                onTap: () {
                  //a funcao SetState autoriza alterar o valor da varivel a baixo
                  setState(() {
                    //alterando o valor da variavel
                    alterandoValorDoContainer3 = 150.0;
                  });
                },
                //criando o container... Passando TAMANHO, COR, TEXTO + conteudo da VARIAVEL
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Text('olhhaaa $alterandoValorDoContainer3'),
                ),
              ),
              //detectndo se for pressionado a tela
              GestureDetector(
                //se foi apenas um toque na tela
                onTap: () {
                  //o setState faz com q o valor da variavel 'alterandoValorDoContainer4' seja modificado e receba a soma do valor das outras variaveis
                  setState(() {
                    //variavel alterandoValorDoContainer4 recebendo o valor das outras variaveis
                    alterandoValorDoContainer4 = alterandoValorDoContainer +
                        alterandoValorDoContainer2 +
                        alterandoValorDoContainer3;
                  });
                },
                //criando um filho/child q sera um container
                child: Container(
                  //container com parametros TAMANHO, COR, e exibindo o resultado da SOMA das 3 containers acima
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Text('soma dos 3 valores $alterandoValorDoContainer4'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
