

class FilliereClass{

  String titre;
  String description;

  FilliereClass({this.titre, this.description});


  FilliereClass getInfo(){
    return FilliereClass(
      titre: 'Informatique',
      description: "c'est la filliere info"
    );
  }


}