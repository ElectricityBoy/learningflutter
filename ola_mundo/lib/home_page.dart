import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
               accountName: Text('PET Elétrica'),
               accountEmail: Text('peteletrica@ufba.br'),
               currentAccountPicture: ClipRRect(
                 borderRadius: BorderRadius.circular(40),
                 child: Image.network(
                   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVd7X3pTp5kkb2j-JgXa7T_LtaXseJuSiikg&usqp=CAU')) ,),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Menu'),
              subtitle: Text('Tela inicial'),
              onTap: () {
                print('home');
              },
            ),
             ListTile(
              leading: Icon(Icons.work),
              title: Text('Estágio'),
              subtitle: Text('Instruções e Processos'),
              onTap: () {
                Navigator.of(context).restorablePushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Politécnica'),
              subtitle: Text('Conheça a Faculdade'),
              onTap: () {
                Navigator.of(context).restorablePushReplacementNamed('/');
              },
            ),
           
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Fórum'),
              subtitle: Text('Tire dúvidas e forme grupo de estudos'),
              onTap: () {
                Navigator.of(context).restorablePushReplacementNamed('/');
              },
            ),
             ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () {
                Navigator.of(context).restorablePushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('PET ELÉTRICA UFBA'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
