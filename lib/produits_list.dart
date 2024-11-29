import 'package:flutter/material.dart';
import 'package:produitsapp/dao/produit_dao.dart';
import 'package:produitsapp/data/base.dart';
import 'package:produitsapp/produit_box.dart';
import 'addProduitForm.dart';

class ProduitsList extends StatelessWidget {
  final ProduitDAO produitDAO;

  const ProduitsList({super.key, required this.produitDAO});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des Produits"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddProduitForm(
                produitDAO: produitDAO,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<Object>(
        stream: produitDAO.getProduitsStream(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: Text("Aucun produit n'est disponible"),
            );
          }
          final liste = snapshot.data as List<Produit>?;
          return ListView.builder(
            itemCount: liste!.length,
            itemBuilder: (context, index) {
              final produit = liste[index];
              return ProduitBox(
                produit: produit,
                produitDAO: produitDAO,
              );
            },
          );
        },
      ),
    );
  }
}
