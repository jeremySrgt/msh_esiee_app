import 'package:flutter/material.dart';

class Question {
  String question;
  String filliere;

  Question(String q, String f) {
    this.question = q;
    this.filliere = f;
  }
}

class QuestionData {
  List<Question> getQuestion() {
    List<Question> questionList = [
      Question("Un petit papier cache ta webcam", "CYB"),
      Question("Tu voudrais comprendre pourquoi facebook te recommande la boulangère en amie", "DSIA"),
      Question("010011110111010101101001", "INFO"),
      Question("Tu a déjà entendu parler d'arduino", "SEI"),
      Question("Tu aimes quand tout est ordonné", "GI"),
      Question("Tu rêve de conduire une Tesla", "SE"),
      Question("Tu rêve d'envoyer un capteur dans l'espace", "BIO"),
      Question("Ta futur maison sera équipé de panneaux solaires", "ENE"),
      Question("Ton mot de passe n'est pas ta date de naissance", "CYB"),
      Question("Tu as un esprit d'analyse et de vulgarisation des données", "DSIA"),
      Question("Le mot algorithmie ne te fais pas peur", "INFO"),
      Question("Souder ne te fais pas peur", "SEI"),
      Question("Tu cherche à tout optimiser", "GI"),
      Question("Tu te considère comme le prochain Tony Stark", "SE"),
      Question("Tu aimerais améliorer le quotidien des gens", "BIO"),
      Question("Tu as déjà construit une mini éolienne", "ENE"),
      Question("Pour toi être à la maison c'est être en localhost", "CYB"),
      Question("Le mot machine learning te fait frémir", "DSIA"),
      Question("Quand on parle de python tu sais que c'est pas du serpent", "INFO"),
      Question("A la manière de Tore tu controle l'electricité", "SEI"),
      Question("Excel, tu connais par coeur !", "GI"),
      Question("Tu aimerais savoir fabriquer un régulateur de vitesse pour ta vieille Twingo", "SE"),
      Question("Tu trouve ca cool d'analyser des données médicales", "BIO"),
      Question("Tu suis Greta Thunberg sur les réseaux sociaux", "ENE"),
    ];

    return questionList;
  }
}
