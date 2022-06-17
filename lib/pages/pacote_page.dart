
import 'package:flutter/material.dart';
import 'package:aula_913/domain/pacote_estudo.dart';
import 'package:aula_913/pages/pacote_detalhes.dart';
import 'package:aula_913/widget/pacote_estudo_card.dart';

class PacotePage extends StatefulWidget {
  const PacotePage({Key? key}) : super(key: key);

  @override
  _PacotePageState createState() => _PacotePageState();
}

class _PacotePageState extends State<PacotePage> {
  PacoteEstudo pacote1 = PacoteEstudo(
    imagem:
        'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    titulo: 'Pacote Cancún 2022/2023',
    transporte: 'Aéreo - Hotel All inclusive',
    cidade: 'CANCÚN, MEX',
    validade: 'De 10 ago 2021 até 30 set 2022',
    desconto: 45,
    numDiarias: 5,
    numPessoas: 2,
    numParcelas: 6,
    precoAntigo: 6819,
    precoAtual: 2819,
  );
  PacoteEstudo pacote2 = PacoteEstudo(
    imagem: 'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
    titulo: 'Pacote Maragogi 2023',
    transporte: 'Hotel All inclusive',
    cidade: 'MARAGOGI, BRA',
    validade: 'De 10 jan 2022 até 31 dez 2023',
    desconto: 45,
    numDiarias: 7,
    numPessoas: 3,
    numParcelas: 12,
    precoAntigo: 4819,
    precoAtual: 819,
  );

  PacoteEstudo pacote3 = PacoteEstudo(
    imagem: 'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
    titulo: 'Pacote Maragogi 2023',
    transporte: 'Hotel All inclusive',
    cidade: 'MARAGOGI, BRA',
    validade: 'De 10 jan 2022 até 31 dez 2023',
    desconto: 45,
    numDiarias: 7,
    numPessoas: 3,
    numParcelas: 12,
    precoAntigo: 4819,
    precoAtual: 819,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFF10397B),
        title: const Text(
          'Pesquisar',
          style: TextStyle(fontSize: 24),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Acrescente ao seu aprendizado esses regalias',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Corre que tá rolando muita promoção',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  SizedBox(width: 24),
                  Placeholder(
                    fallbackHeight: 150,
                    fallbackWidth: 100,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            CardPacoteEstudo(pacoteEstudo: pacote1),
            CardPacoteEstudo(pacoteEstudo: pacote2),
            CardPacoteEstudo(pacoteEstudo: pacote3),
          ],
        ),
      ),
    );
  }

}
