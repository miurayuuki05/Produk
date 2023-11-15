import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: const <Widget>[
            Produk(barang: "Barang 1", price: "Rp. 220.000"),
            Produk(barang: "Barang 2", price: "Rp. 14.000"),
            Produk(barang: "Barang 3", price: "Rp. 20.000"),
            Produk(barang: "Barang 4", price: "Rp. 24.000"),
            Produk(barang: "Barang 5", price: "Rp. 130.000"),
            Produk(barang: "Barang 6", price: "Rp. 10.000"),
            Produk(barang: "Barang 7", price: "Rp. 5.500"),
            Produk(barang: "Barang 8", price: "Rp. 70.000"),
            Produk(barang: "Barang 9", price: "Rp. 12.000"),
            Produk(barang: "Barang 10", price: "Rp. 222.000"),
          ],
        ));
  }
}

class Produk extends StatelessWidget {
  final String barang;
  final String price;
  const Produk({super.key, required this.barang, this.price = "FREE"});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 24, 24, 24),
              spreadRadius: 1,
              blurRadius: 2)
        ],
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                barang,
                style: GoogleFonts.quicksand(
                  fontSize: 17,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                price,
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                ),
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Icon(Icons.add_shopping_cart_outlined),
          )
        ],
      ),
    );
  }
}
