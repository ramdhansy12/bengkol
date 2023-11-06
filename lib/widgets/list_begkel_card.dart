import 'package:bengkel_online/models/bengkel.dart';
import 'package:flutter/material.dart';

class BengkelListScreen extends StatelessWidget {
  final List<Bengkel> bengkels;

  BengkelListScreen({required this.bengkels});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Bengkel Terdekat'),
      ),
      body: ListView.builder(
        itemCount: bengkels.length,
        itemBuilder: (context, index) {
          Bengkel bengkel = bengkels[index];
          return ListTile(
            title: Text(bengkel.name),
            subtitle: Text(bengkel.address),
            onTap: () {
              // Aksi ketika pengguna menekan bengkel tertentu, misalnya navigasi ke halaman detail bengkel.
            },
          );
        },
      ),
    );
  }
}
