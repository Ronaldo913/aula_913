import 'package:aula_913/domain/pacote_estudo.dart';
import 'package:aula_913/pages/pacote_detalhes.dart';
import 'package:flutter/material.dart';

class CardPacoteEstudo extends StatefulWidget {
  final PacoteEstudo pacoteEstudo;

  const CardPacoteEstudo({
    Key? key,
    required this.pacoteEstudo,
  }) : super(key: key);

  @override
  _CardPacoteEstudoState createState() => _CardPacoteEstudoState();
}

class _CardPacoteEstudoState extends State<CardPacoteEstudo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PacoteDetalhes(
                pacoteEstudo: widget.pacoteEstudo,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            buildImage(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.pacoteEstudo.titulo,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(widget.pacoteEstudo.transporte),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.wb_sunny_outlined),
                      const SizedBox(width: 4),
                      Text('${widget.pacoteEstudo.numDiarias} Diárias'),
                      const SizedBox(width: 8),
                      const Icon(Icons.person_outline),
                      const SizedBox(width: 4),
                      Text('${widget.pacoteEstudo.numPessoas} Pessoas'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('A partir de R\$ ${widget.pacoteEstudo.precoAntigo}'),
                  Text(
                    'R\$ ${widget.pacoteEstudo.precoAtual}',
                    style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Cancelamento Grátis!',
                    style: TextStyle(
                      color: Colors.green[700],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => toScreenThree(),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      onPrimary: Colors.white,
                    ),
                  child: Text('Ir para a página 3 ->'),
                 ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(8),
          ),
          child: Image.network(widget.pacoteEstudo.imagem),
        ),
        Container(
          child: const Text(
            '-45%',
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFfd6c00),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        ),
      ],
    );
  }
}
