import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "e-giaka",
            style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.water_drop_rounded),
        tooltip: "Boire de l'eau",
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Paramètres")
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Statistiques"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Voir détails"),
                )
              ],
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                width: 200,
                height: 200,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("Objectif du jour"),
                        Text(
                          "1.5 L",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Center(
                      child: Stack(children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        const Text(
                          "20 %",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Catégories"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Tout voir (9)"),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                      child: const Center(
                          child: Text("Eau",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Jours"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Voir détails"),
                )
              ],
            ),
            Row(
              children: [
                for (int i = 0; i < 6; i++)
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Text("23"),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
