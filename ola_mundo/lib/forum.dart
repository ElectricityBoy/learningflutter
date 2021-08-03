import 'package:flutter/material.dart';
import 'home_page.dart';

class ForumPage extends StatefulWidget {
  @override
  State<ForumPage> createState() {
    return ForumPageState();
  }
}

class ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      tabs: <Widget>[
      Tab(
        icon: Icon(Icons.comment),
        text: "Dúvidas",
      ),
      Tab(
        icon: Icon(Icons.book),
        text: "Grupo de Estudos",
      )
    ],
    );

  return Scaffold(
    body: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Fórum")),
          actions: [
          CustomSwitch(),
          ],
          bottom: myTabBar,
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("Área dedicada para postar e tirar dúvidas"),
            ),
            Center(
              child: Text("Formar grupos de estudos"),
            ),
          ]),
      ),
    ),   
  );
  }
}




  