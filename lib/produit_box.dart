import 'dart:io';
import 'package:flutter/material.dart';
import 'package:produitsapp/dao/produit_dao.dart';
import 'package:produitsapp/data/base.dart';
import 'package:produitsapp/produits_details.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProduitBox extends StatelessWidget {
  final Produit produit;
  final ProduitDAO produitDAO;

  const ProduitBox({
    super.key,
    required this.produit,
    required this.produitDAO,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) => produitDAO.deleteProduitById(produit.id),
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(45),
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetails(produit: produit),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(45),
            ),
            height: 120,
            child: Row(
              children: [
                const SizedBox(width: 10),
                Center(
                  child: Image.file(
                    File(produit.photo),
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(width: 10),
                Text(produit.libelle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
