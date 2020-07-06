import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'description_fillieres/filliereDescription.dart';
import 'package:msh_esiee_app/description_fillieres/FilliereClass.dart';

class DiscoverPage extends StatelessWidget {
  final FilliereClass _filliereClass = new FilliereClass();

  Color _currentBGColor1 = Color(0xff82ccdd);
  Color _currentBGColor2 = Color(0xff0c2461);

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
                          filiere: _filliereClass.getBio(),
                        )),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Cybersécurité"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilliereDescription(
                          filiere: _filliereClass.getCyb(),
                        )),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Datascience et IA"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilliereDescription(
                          filiere: _filliereClass.getDsia(),
                        )),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Energie"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilliereDescription(
                          filiere: _filliereClass.getEn(),
                        )),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Génie industriel"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilliereDescription(
                          filiere: _filliereClass.getGi(),
                        )),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Informatique"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilliereDescription(
                          filiere: _filliereClass.getInfo(),
                        )),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Systèmes embarqués"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilliereDescription(
                          filiere: _filliereClass.getSe(),
                        )),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Systèmes électroniques intelligents"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FilliereDescription(
                          filiere: _filliereClass.getSei(),
                        )),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var platform = Theme.of(context).platform;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [_currentBGColor1, _currentBGColor2])),
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
                            new Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        "Découvrir",
                        style: TextStyle(fontSize: 25.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 500),
                  child: discover(context),
                ),
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 500),
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: ListTile(
                    title: Text("Découvrir les filières en apprentissage"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      var url =
                          "https://www.esiee.fr/fr/formations/ingenieur-par-apprentissage";
                      launch(url);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
