import 'dart:html';

import 'package:flutter/material.dart';
import 'package:yemektarifi/screens/YemeklerSayfa.dart';
import 'package:yemektarifi/model/Kategoriler.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:yemektarifi/widgets/categorycardwidget.dart';

import '../widgets/categorycardwidget.dart';
import 'YemeklerSayfa.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({
    required Key key,
    required this.refKategoriler,
  }) : super(key: key);

  final DatabaseReference refKategoriler;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Event>(
      stream: refKategoriler.onValue,
      builder: (context, event) {
        if (event.hasData) {
          var kategoriListesi = <Kategori>[];

          var snapshot;
          var gelenDegerler = event.data?.snapshot.value;

          if (gelenDegerler != null) {
            gelenDegerler.forEach((key, nesne) {
              var gelenKategori = Kategori.fromJson(key, nesne);
              kategoriListesi.add(gelenKategori);
            });
          }

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2,
            ),
            itemCount: kategoriListesi.length,
            itemBuilder: (context, indeks) {
              var kategori = kategoriListesi[indeks];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => YemeklerSayfa(
                            kategori: kategori,
                          )));
                },
                child: CategoryCard(kategori: kategori),
              );
            },
          );
        } else {
          return Center();
        }
      },
    );
  }
}