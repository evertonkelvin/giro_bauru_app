import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(70),
        color: const Color(0xFF009457),
        child: const Center (
          child: Text(
            'Seja bem-vindo ao',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 70),
        child: const Center (
          child: Text(
            'Giro Bauru',
            style: TextStyle(
              fontFamily: 'RocknRoll One',
              color: Color(0xFF009457),
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 70),
        child: const Center (
          child: Text(
            'Desbravando a cidade sem limites',
            style: TextStyle(
              fontFamily: 'RocknRoll One',
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        color: const Color(0xFF009457),
        padding: const EdgeInsets.all(40),
        child: const Center (
          child: Text(
            'Clique em um botão para conhecer os principais pontos de Bauru',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ]);
  }
}