import 'package:flutter/material.dart';
import 'package:msh_esiee_app/description_fillieres/FilliereClass.dart';

class FilliereDescription extends StatelessWidget{

  FilliereClass filliere;
  FilliereDescription({this.filliere});


  final Color gradientDiscover1 = Color(0xfff6b93b);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
        backgroundColor: gradientDiscover1,
      ),
      body: Center(child: Text(filliere.titre)),
    );
  }


}