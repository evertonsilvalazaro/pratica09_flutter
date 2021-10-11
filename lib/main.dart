import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  int soma = 0;
  String texto = '';

  cliqueBotao() {
    int numero1 = int.parse(n1.text);
    int numero2 = int.parse(n2.text);
    soma = numero1 + numero2;

    setState(() {
      texto = 'A soma é $soma';
    });

    print(texto);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sem estado'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: n1,
              ),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => n2.clear(),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Informe um numero',
                ),
              ),
              Text('$texto'),
              ElevatedButton(
                  onPressed: () => cliqueBotao(), child: Text('Clique'))
            ],
          ),
        ),
      ),
    );
  }
}
