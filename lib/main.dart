import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "champ",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PJO"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Chaman Bajpaiyee"),
            accountEmail: Text("chaman@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/92207463?v=4"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("chaman@gmail.com"),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Call"),
            subtitle: Text("9336921823"),
            trailing: Icon(Icons.phone),
          ),
        ]),
      ),
    );
  }
}
