import 'package:flutter/material.dart';

class Question {
  String question;
  String filliere;
  String image;

  Question(String q, String f, String image) {
    this.question = q;
    this.filliere = f;
    this.image = image;
  }
}

class QuestionData {
  List<Question> getQuestion() {
    List<Question> questionList = [
      Question("Un petit papier cache ta webcam", "CYB", './assets/images/webcam.jpg'),
      Question("Tu voudrais comprendre pourquoi facebook te recommande la boulangère en amie", "DSIA",'./assets/images/facebookalgorithm.jpg'),
      Question("010011110111010101101001", "INFO",'./assets/images/binaire.jpg'),
      Question("Tu a déjà entendu parler d'arduino", "SEI",'./assets/images/Arduino_Uno.jpg'),
      Question("Tu aimes quand tout est ordonné", "GI",'./assets/images/supplychain.jpg'),
      Question("Tu rêve de conduire une Tesla", "SE",'./assets/images/model-s-performance.jpg'),
      Question("Tu rêve d'envoyer un capteur dans l'espace", "BIO",'./assets/images/thomaspesquet.jpg'),
      Question("Ta futur maison sera équipé de panneaux solaires", "ENE",'./assets/images/panneauxsolaires.jpg'),
      Question("Ton mot de passe n'est pas ta date de naissance", "CYB",'./assets/images/motdepasse.jpg'),
      Question("Tu as un esprit d'analyse et de vulgarisation des données", "DSIA",'./assets/images/dataviz.jpg'),
      Question("Le mot algorithmie ne te fais pas peur", "INFO",'./assets/images/algo.jpg'),
      Question("Souder ne te fais pas peur", "SEI",'./assets/images/souder.jpg'),
      Question("Tu cherche à tout optimiser", "GI",'./assets/images/opti.jpg'),
      Question("Tu te considère comme le prochain Tony Stark", "SE",'./assets/images/tonystark.jpg'),
      Question("Tu aimerais améliorer le quotidien des gens", "BIO",'./assets/images/helping-hand.jpg'),
      Question("Tu as déjà construit une mini éolienne", "ENE",'./assets/images/eolienne.jpg'),
      Question("Pour toi être à la maison c'est être en localhost", "CYB",'./assets/images/localhost.png'),
      Question("Le mot machine learning te fait frémir", "DSIA",'./assets/images/ml.jpg'),
      Question("Quand on parle de python tu sais que c'est pas du serpent", "INFO",'./assets/images/python.jpg'),
      Question("A la manière de Tore tu controle l'electricité", "SEI",'./assets/images/tore.jpg'),
      Question("Excel, tu connais par coeur !", "GI",'./assets/images/excel.jpeg'),
      Question("Tu aimerais savoir fabriquer un régulateur de vitesse pour ta vieille Twingo", "SE",'./assets/images/regulateur.jpg'),
      Question("Tu trouve ca cool d'analyser des données médicales", "BIO",'./assets/images/donnemedicale.jpg'),
      Question("Tu suis Greta Thunberg sur les réseaux sociaux", "ENE",'./assets/images/ecologie.jpg'),
    ];

    return questionList;
  }
}
