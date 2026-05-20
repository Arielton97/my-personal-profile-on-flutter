import 'package:flutter/material.dart';

void main() => runApp(MyProfile());

class MyProfile extends StatelessWidget {

  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Perfil Pessoal',
      home: Scaffold(
        appBar: AppBar(title: Text('Perfil Pessoal'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/capivara~.png'),
            ),
            SizedBox(height: 12,),
            Text(
              'Myth15k',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,),
            ),
            SizedBox(height: 4,),
            Text(
              'Desenvolvedor de Software',
              style: TextStyle(color: Colors.green[600], fontSize: 16,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () {
                  //   TODO: Adicionar lógica para enviar um email
                  },
                ),
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {
                  //   TODO: Adicionar lógica para fazer uma ligação
                  },
                ),
                IconButton(
                  icon: Icon(Icons.web),
                  onPressed: () {
                  //   TODO: Adicionar lógica para abrir um site
                  },
                ),
              ],
            ),
            SizedBox(height: 16,),
            Wrap(
              spacing: 8.0, // espaço horizontal entre os chips
              runSpacing: 4.0, // espaço vertical entre os chips
              alignment: WrapAlignment.center,
              children: [
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Color(0xFF080606),
                    child: Text(
                      'V', style: TextStyle(color: Color(0xFFFD2626)),
                    ),
                  ),
                  label: Text('Valorant'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Color(0xFF3F70FA),
                    child: Text(
                      'F', style: TextStyle(color: Color(0xFFD3D7E5)),
                    ),
                  ),
                  label: Text('Filmes'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Color(0xFF453A4C),
                    child: Text(
                      'M', style: TextStyle(color: Color(0xFFF1F1F1)),
                    ),
                  ),
                  label: Text('Música'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}