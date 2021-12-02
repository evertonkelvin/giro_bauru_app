import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(70),
        color: const Color(0xFF009457),
        child: const Center(
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
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Giro Bauru',
              style: TextStyle(
                fontFamily: 'RocknRoll One',
                color: Color(0xFF009457),
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Desbravando a cidade sem limites',
              style: TextStyle(
                fontFamily: 'RocknRoll One',
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      Container(
        color: const Color(0xFF009457),
        padding: const EdgeInsets.all(40),
        child: const Center(
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
