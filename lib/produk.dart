import 'package:flutter/material.dart';
import 'package:styavani/tambah_produk.dart';

class ProdukScreen extends StatelessWidget {
  const ProdukScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Produk'),
         backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: (){
         Navigator.push(context,  MaterialPageRoute(builder: (context) => TambahProduk(),));
        }, icon: Icon(Icons.add))],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
        return Container();
      }, itemCount: 3,separatorBuilder: (context, index) => const SizedBox(height: 10,),)
    );
  }
}
