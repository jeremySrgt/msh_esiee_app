

class FilliereClass{

  String titre;
  String description;

  FilliereClass({this.titre, this.description});


  FilliereClass getInfo(){
    return FilliereClass(
      titre: 'Informatique',
      description: "Cette filière forme des ingénieurs généralistes en informatique. Elle conduit à l'acquisition de compétences associées aux fondements de l'informatique (langage, algorithme, architecture matérielle et distribuée) permettant une adaptabilité au renouvellement des technologies. La filière informatique couvre de nombreux domaines des technologies du numérique (technologie web, réalité virtuelle, calcul haute performance, biosciences, sécurité logicielle...)."
    );
  }

  FilliereClass getBio(){
    return FilliereClass(
        titre: 'Biotechnologies et E-santé',
        description: "La filière forme des ingénieurs capables d'analyser les besoins liés au développement de produits ou procédés en sciences de la vie et d'en maîtriser les enjeux techniques. Elle permet d'acquérir une connaissance des systèmes biologiques et médicaux mais également du traitement et de la gestion de l'information de santé."
    );
  }

  FilliereClass getCyb(){
    return FilliereClass(
        titre: 'Cybersécurité',
        description: "La filière forme des ingénieurs capables de répondre aux besoins des entreprises et des organismes publics en matière de sécurité des Systèmes d’information, Systèmes d’exploitation, Réseaux de communication et Matériels. L’objectif est de former des ingénieurs opérationnels maitrisant la sécurité de bout-en-bout : du matériel jusqu'au logiciel en passant par la protection des données."
    );
  }

  FilliereClass getDsia(){
    return FilliereClass(
        titre: 'DataScience et IA',
        description: "Dans un contexte de très fort essor des Datasciences, du BigData et de l’Intelligence Artificielle (IA), la filière forme des ingénieurs spécialistes : de l'ingénierie et du traitement des données, de l’apprentissage automatique (machine learning), de l’implantation et déploiement de solutions"
    );
  }

  FilliereClass getGi(){
    return FilliereClass(
        titre: 'Génie Industriel',
        description: "La filière permet d'acquérir les connaissances scientifiques et les compétences technologiques, dans les nouvelles Technologies de l'Information et de la Communication (TIC), pour la conception, l'analyse et le pilotage de systèmes de production de biens et de services et de la supply chain associée, afin d'optimiser leurs performances."
    );
  }

  FilliereClass getSe(){
    return FilliereClass(
        titre: 'Systèmes Embarqués',
        description: "La filière forme des ingénieurs ayant une vue globale sur la conception, le développement et la mise au point d'un système embarqué. Ces systèmes permettent d'intégrer des processeurs dans un nombre sans cesse croissant de dispositifs, des objets du quotidien aux systèmes technologiques très avancés."
    );
  }

  FilliereClass getSei(){
    return FilliereClass(
        titre: 'Systèmes Electroniques Intélligents',
        description: "La filière forme des ingénieurs maîtrisant la conception des systèmes électroniques intelligents et communicants, depuis le choix des composants jusqu’à la conception de SoC (System on Chip) ou de cartes, incluant le développement de matériel dédié sur FPGA et les fonctions de communication adaptées. Les ingénieurs issus de cette filière sont ainsi capables de répondre aux enjeux de mobilité, de très faible consommation, de calcul intensif rapide, de sécurité, pour les nouveaux besoins de l’Internet des objets, de l’intelligence artificielle, de la science des données ou de la cybersécurité."
    );
  }

  FilliereClass getEn(){
    return FilliereClass(
        titre: 'Energie',
        description: "La filière forme des ingénieurs capables de répondre aux enjeux liés au changement climatique et à la transition énergétique par une transformation de l’offre (décarbonation du mix énergétique, utilisation accrue des énergies renouvelables…) et une maîtrise de la demande (sobriété et efficacité énergétique) dans leurs dimensions technologique au niveau économique et réglementaire avec une attention particulière aux outils numériques (objets connectés, données…, modélisation, simulation, optimisation) et à leur mise en œuvre à différentes échelles (bâtiment, quartier, ville, etc.)."
    );
  }

}