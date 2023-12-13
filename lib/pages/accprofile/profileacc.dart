import 'package:flutter/material.dart';

class ProfileAcc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  '/assets/images/profile/profile.png'), // Ganti dengan URL gambar Anda
            ),
            title: Text('Jane Doe'),
            subtitle: Text('+62 812 3456 7891'),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                // Aksi tombol Edit
              },
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        ListTile(
          title: Text(
            'Akun',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.history),
          title: Text('Aktivitas'),
          onTap: () {
            // Navigate or perform actions for account
          },
        ),
        ListTile(
          leading: Icon(Icons.payment),
          title: Text('Metode Pembayaran'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text('Bantuan & Laporan Saya'),
          onTap: () {
            // Navigate or perform actions for help & report
          },
        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text('Pilih Bahasa'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        ListTile(
          leading: Icon(Icons.bookmark),
          title: Text('Alamat Favorit'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Ajak Teman'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifikasi'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        ListTile(
          leading: Icon(Icons.security),
          title: Text('Keamanan Akun'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Atur Akun'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        SizedBox(
          height: 10,
        ),

        ListTile(
          title: Text(
            'Info Lainnya',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text('Kebijakan Privasi'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        ListTile(
          leading: Icon(Icons.description),
          title: Text('Ketentuan Layanan'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Beri Rating'),
          onTap: () {
            // Navigate or perform actions for payment method
          },
        ),
        // Add other ListTile widgets for each menu item...
      ],
    );
  }
}
