import 'package:drift/drift.dart';
import 'package:produitsapp/data/base.dart';

@DriftAccessor(tables: [Produits])
class ProduitDAO extends DatabaseAccessor<ProduitsDatabase> {
  ProduitDAO(super.attachedDatabase);

  Future<void> insertProduit(ProduitsCompanion produit) async {
    await into(attachedDatabase.produits).insert(produit);
  }

  Future<List<Produit>> getAllProduits() =>
      select(attachedDatabase.produits).get();

  Stream<List<Produit>> getProduitsStream() =>
      select(attachedDatabase.produits).watch();

  Future<bool> updateProduit(Produit produit) =>
      update(attachedDatabase.produits).replace(produit);

  Future<int> deleteProduitById(int id) =>
      (delete(attachedDatabase.produits)..where((p) => p.id.equals(id))).go();

  Future<Produit> getProduitById(int id) =>
      (select(attachedDatabase.produits)..where((p) => p.id.equals(id)))
          .getSingle();
}
