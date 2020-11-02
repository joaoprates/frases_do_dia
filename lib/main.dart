import 'package:flutter/material.dart';
import 'dart:math';


void main(){

  runApp(MaterialApp(
    home: Home(),
  ));

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
     "Seja estranho. Seja aleatório. Seja quem você é. Porque você nunca sabe quem amaria a pessoa que você esconde.",
    "A vida é um caos aleatório,ordenada pelo tempo.",
    "A verdade, é que dói lembrar dela.",
    "O aleatório não existe, nosso cérebro sempre toma decisões mesmo que ocultas.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    //0
    var numeroSorteado =Random().nextInt(_frases.length);


    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
          backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green, 
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
