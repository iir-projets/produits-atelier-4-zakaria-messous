import 'package:flutter/material.dart';
import 'dart:io';
import 'package:produitsapp/data/base.dart';

class ProductDetails extends StatelessWidget {
  final Produit produit;
  const ProductDetails({super.key, required this.produit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(produit.libelle,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.file(
                  File(produit.photo),
                  height: 160,
                  width: 160,
                ),
                const SizedBox(height: 16),
                Text('Prix: ${produit.prix}',
                    style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 16),
                Text(
                  'Description: ${produit.description}',
                  style: const TextStyle(fontSize: 16),
                  maxLines: null,
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
