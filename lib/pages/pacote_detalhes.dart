import 'package:aula_913/domain/pacote_estudo.dart';
import 'package:flutter/material.dart';

class PacoteDetalhes extends StatefulWidget {
  final PacoteEstudo pacoteEstudo;

  const PacoteDetalhes({
    Key? key,
    required this.pacoteEstudo,
  }) : super(key: key);

  @override
  _PacoteDetalhesState createState() => _PacoteDetalhesState();
}

class _PacoteDetalhesState extends State<PacoteDetalhes> {
  PacoteEstudo get pacote => widget.pacoteEstudo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(pacote.imagem),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pacote.cidade,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                Text(
                  pacote.titulo,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 8),
                Text(pacote.transporte),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${pacote.numDiarias} diárias',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Container(
                      color: const Color(0xFFFD6C00),
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      child: Text(
                        '-${pacote.desconto}%',
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
