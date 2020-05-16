import 'package:flutter/material.dart';
import 'package:msh_esiee_app/description_fillieres/FilliereClass.dart';

class FilliereDescription extends StatelessWidget{

  final FilliereClass filliere;
  FilliereDescription({this.filliere});


  Color _currentBGColor1 = Color(0xff3fa3ba);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filliere.titre),
        backgroundColor: _currentBGColor1,
      ),
      body: Center(child: Text(filliere.description)),
    );
  }


}