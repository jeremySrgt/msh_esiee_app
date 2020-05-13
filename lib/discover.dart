import 'package:flutter/material.dart';

import 'description_fillieres/filliereDescription.dart';
import 'package:msh_esiee_app/description_fillieres/FilliereClass.dart';

class DiscoverPage extends StatelessWidget {
  final FilliereClass _filliereClass = new FilliereClass();

  Widget discover(context) {
    return ListView(
      padding: EdgeInsets.all(12.0),
      children: <Widget>[
        Card(
          child: ListTile(
            title: Text("Biotechnologies et e-santé"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilliereDescription(
                          filliere: _filliereClass.getInfo(),
                        )),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Cybersécurité"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Datascience et IA"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Energie"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Génie industriel"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Informatique"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Système embarqués"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Système electronique intélligents"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon:
                            new Icon(Icons.arrow_back_ios, color: Colors.grey),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        "Esiee Quiz",
                        style: TextStyle(fontSize: 25.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: discover(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
