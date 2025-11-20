import 'package:flutter/material.dart';

class ListInfoScreen extends StatelessWidget {
  const ListInfoScreen({super.key});

  // Data Dummy untuk List
  final List<Map<String, String>> dataLokasi = const [
    {'title': 'Kampus Utama', 'subtitle': 'Jalan Soekarno-Hatta'},
    {'title': 'Rumah Syifa', 'subtitle': 'Komp.GPI, jln.Sindangpanon'},
    {'title': 'Pusat Olahraga', 'subtitle': 'Komplek GPI, jln.Patala'},
    {'title': 'Perpustakaan', 'subtitle': 'Gedung RW 17'},
    {'title': 'Masjid Darussalam', 'subtitle': 'Jalan Utama GPI'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataLokasi.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          elevation: 2,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: Text('${index + 1}', style: const TextStyle(color: Colors.blueAccent)),
            ),
            title: Text(dataLokasi[index]['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(dataLokasi[index]['subtitle']!),
            trailing: const Icon(Icons.pin_drop),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Anda memilih ${dataLokasi[index]['title']}')),
              );
            },
          ),
        );
      },
    );
  }
}