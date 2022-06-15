import 'package:flutter/material.dart';

class PropagandaPage extends StatefulWidget {
  const PropagandaPage({Key? key}) : super(key: key);

  @override
  _PropagandaPageState createState() => _PropagandaPageState();
}

class _PropagandaPageState extends State<PropagandaPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Página Pagamento',
        style: TextStyle(
          fontSize: 30
        ),
        ),
      ),
    );
  }
}