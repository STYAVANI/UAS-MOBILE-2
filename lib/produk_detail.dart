import 'package:flutter/material.dart';
import 'package:styavani/model/produk.dart';
import 'package:styavani/produk_form.dart';

class ProdukDetail extends StatefulWidget {
  ProdukDetail({super.key, this.produk});

  Produk? produk;

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Kode : ${widget.produk!.kodeProduk}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Kode : ${widget.produk!.namaProduk}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Kode : ${widget.produk!.hargaProduk}',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProdukForm(
                              produk: widget.produk,
                            ),
                          ));
                    },
                    child: Text('Edit')),
                OutlinedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Yakin ingin menghapus data ini?'),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Batal')),
                              TextButton(onPressed: () {}, child: Text('Ya')),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Delete'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
