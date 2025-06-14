import 'package:flutter/material.dart';

void main() {
  runApp(MonAppli());
}

//---------------Premier StatelessWidget : MonAppli------------------------------

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
    );
  }
}

//----------------- Deuxième StatelessWidget : pageAccueil--------------------

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Magazine Infos",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 183, 58, 106),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Action du bouton menu
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Action du bouton recherche
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Image(
              image: AssetImage('assets/images/magazineInfo.jpeg'),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            PartieTitre(),
            PartieTexte(),
            PartieIcone(),
            SizedBox(height: 20),
            PartieRubrique(),
          ],
        ),
      ),
    );
  }
}

//-------------- Troisième StatelessWidget : PartieTitre-----------------------

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Bienvenue au Magazine Infos",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Votre magazine numérique, votre univers d'inspiration",
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

//-------------- Quatrième StatelessWidget : PartieTexte-----------------------

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        "Magazine Infos est bien plus qu'un simple magazine numérique. C'est votre passerelle vers la mode, une source d'inspiration quotidienne où art et culture se rencontrent. Nos contenus soigneusement sélectionnés pour vous aideront sur les dernières tendances, la vie et nous veillerons à garder le divertissement au point.",
        style: TextStyle(fontSize: 14, height: 1.5),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

//---------------------------- Cinquième StatelessWidget : PartieIcone----------------------

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconColumn(Icons.phone, "TEL"),
          _buildIconColumn(Icons.email, "MAIL"),
          _buildIconColumn(Icons.share, "PARTAGE"),
        ],
      ),
    );
  }

  Widget _buildIconColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.pink),
        SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.pink,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

//------------------- Sixième StatelessWidget : PartieRubrique----------------------------

class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/presse.jpeg', // Correction du nom de fichier
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/mode.jpeg', // Correction du nom de fichier
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
