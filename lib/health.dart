import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'database_helper.dart';

class Health extends StatelessWidget {
  Health({Key? key}) : super(key: key);

  final dbHelper = DatabaseHelper.instance;

  getPlacesList() async {
    return (await dbHelper.getPlacesList('Saúde'))!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: const Center(
          child: Text(
            'Saúde',
            style: TextStyle(
              fontFamily: 'RocknRoll One',
              color: Color.fromARGB(255, 228, 110, 116),
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      FutureBuilder<dynamic>(
        future: getPlacesList(),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            final healthPlaces = snapshot.data;

            return Expanded(
              child: ListView.builder(
                itemCount: healthPlaces.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.all(6),
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 110, 116),
                          border: Border.all(
                            color: const Color.fromARGB(255, 228, 110, 116),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          healthPlaces[index]['nome'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      var place = healthPlaces[index];
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                place['nome'],
                                textAlign: TextAlign.center,
                              ),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      image: NetworkImage(place['imagem']),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        place['descricao'],
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Endereço: ' +
                                            place['logradouro'] +
                                            ', ' +
                                            place['quadra'] +
                                            ' - ' +
                                            place['numero'] +
                                            ', ' +
                                            place['cep'] +
                                            ', ' +
                                            place['bairro'] +
                                            ', ' +
                                            place['cidade'] +
                                            ', ' +
                                            place['estado'],
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Voltar')),
                              ],
                            );
                          });
                    },
                  );
                },
                // ],
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    ]);
  }
}
