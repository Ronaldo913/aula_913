import 'package:flutter/material.dart';

class CardPacoteTuristico extends StatefulWidget {
  final String imagem;
  final String titulo;
  final int numDiarias;
  final int numPessoas;
  final int numParcelas;
  final String transporte;
  final double precoAtual;
  final double precoAntigo;

  const CardPacoteTuristico({
    Key? key,
    required this.imagem,
    required this.titulo,
    required this.numDiarias,
    required this.numPessoas,
    required this.numParcelas,
    required this.transporte,
    required this.precoAtual,
    required this.precoAntigo,
  }) : super(key: key);

  @override
  _CardPacoteTuristicoState createState() => _CardPacoteTuristicoState();
}

class _CardPacoteTuristicoState extends State<CardPacoteTuristico> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          buildImage(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(widget.transporte),
                SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.wb_sunny_outlined),
                    const SizedBox(width: 4),
                    Text('${widget.numDiarias} Diárias'),
                    const SizedBox(width: 8),
                    const Icon(Icons.person_outline),
                    const SizedBox(width: 4),
                    Text('${widget.numPessoas} Pessoas'),
                  ],
                ),
                SizedBox(height: 8),
                Text('A partir de R\$ ${widget.precoAntigo}'),
                Text(
                  'R\$ ${widget.precoAtual}',
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
              ],
            ),
          )
        ],
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
          child: Image.network(widget.imagem),
        ),
        Container(
          child: const Text(
            '-45%',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
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
