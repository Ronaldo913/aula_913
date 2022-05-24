import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFF10397B),
        title: const Text(
          'Pesquisar',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.purple,
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Top destinos mais buscados',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Corre que ta rolando muita promoção',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFF8FF04),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'EU QUERO!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Placeholder(
                    fallbackHeight: 150,
                    fallbackWidth: 100,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            buildCardPacoteTuristico(
              imagem: 'https://r4t2s9v3.stackpathcdn.com/wp-content/uploads/2018/01/beleza-cancun.jpg',
              titulo: 'Pacote Cancún 2023',
              transporte: 'Aéreo - Hotel all inclusve',
              numDiarias: 5,
              numPessoas: 2,
              precoAntigo: 6819,
              precoAtual: 2819,
              numParcelas: 12
            ),
            buildCardPacoteTuristico(
                imagem: 'https://www.viagensecaminhos.com/wp-content/uploads/2014/10/maragogi-alagoas.jpg',
                titulo: 'Pacote Maragogi 2023',
                transporte: 'Hotel all inclusve',
                numDiarias: 7,
                numPessoas: 1,
                precoAntigo: 4819,
                precoAtual: 1500,
                numParcelas: 6
            ),
          ],
        ),
      ),
    );
  }

  buildCardPacoteTuristico({
    required String imagem,
    required String titulo,
    required String transporte,
    required int numDiarias,
    required int numPessoas,
    required double precoAntigo,
    required double precoAtual,
    required int numParcelas,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.network(imagem),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  transporte,
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.wb_sunny_outlined,
                      color: Colors.grey[700],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$numDiarias Diárias',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 8),
                    Icon(
                      Icons.person_outline,
                      color: Colors.grey[700],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$numPessoas Pessoas',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'A partir de R\$ $precoAntigo',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Row(
                  children: [
                    Text(
                      'R\$ $precoAtual',
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD6C00),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Taxa Grátis em até ${numParcelas}x',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Cancelamento Grátis!',
                  style: TextStyle(color: Colors.green[800]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
