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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFF10397B),
        title: Text(
          'Pesquisar',
          style: TextStyle(
            fontSize: 24
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.purple,
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
            Card(
              child: Column(
                children: [
                  const Placeholder(fallbackHeight: 150),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Pacote Cancún 2021',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Aéreo - Hotel All incluse',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.wb_sunny_outlined,
                              color: Colors.grey[700],
                            ),
                            SizedBox(width: 4),
                            Text(
                              '05 Diárias',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.person_outline,
                              color: Colors.grey[700],
                            ),
                            SizedBox(width: 4),
                            Text(
                              '01 Pessoa',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'A partir de R\$ 6816',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        Row(
                          children: [
                            const Text(
                              'R\$ 3.749',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFD6C00),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Taxa Grátis em até 12x',
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
            ),
          ],
        ),
      ),
    );
  }
}
