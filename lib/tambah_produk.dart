import 'package:flutter/material.dart';

class TambahProduk extends StatelessWidget {
  const TambahProduk({super.key});

  @override
  Widget build(BuildContext context) {
    final kodeProdukController = TextEditingController();
    final namaProdukController = TextEditingController();
    final hargaController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Produk'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
           TextFormField(
            controller: kodeProdukController,
            decoration: InputDecoration(
                label: Text('Kode Produck'),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(height: 24.0),
           TextFormField(
            controller: namaProdukController,
            decoration: InputDecoration(
                label: Text('Nama Produck'),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(height: 24.0),
           TextFormField(
            controller: hargaController,
            decoration: InputDecoration(
                label: Text('Harga'),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(onPressed: (){}, child: Text('Simpan'))
        ],
      ),
    );
  }
}
