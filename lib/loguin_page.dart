import 'package:app_lego/home_page.dart';
import 'package:flutter/material.dart';

class LoguinPage extends StatefulWidget {
  const LoguinPage({Key? key}) : super(key: key);

  @override
  _LoguinPageState createState() => _LoguinPageState();
}

class _LoguinPageState extends State<LoguinPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // poderia usar material mas a ela de loguin fica statica atrapalhando o teclado
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/imagens/Lego.png'),
                ),
                Container(height: 20),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'vi' && senha == '123') {
                      Navigator.of(context).pushReplacementNamed(
                          '/home'); //se colocar so pushNamed fica a setinha pra voltar pra tela anterior
                    } else {
                      // a nova tela poderia ter sido empurrada a força com push e MaterialPageRoute arrow function
                      print("fakhas");
                    }
                  },
                  child: Container(
                    child: Text(
                      "Entrar",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
